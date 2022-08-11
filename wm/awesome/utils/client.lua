local awful = require("awful")
local gmath = require("gears.math")

local M = {}

local dpi = require("utils.theme").dpi

local floating_resize_amount = dpi(20)
local tiling_resize_factor = 0.05

local function _move_to_tag(offset)
  if client.focus then
    local tags = client.focus.screen.tags
    local tag_index = client.focus.screen.selected_tag.index
    local target_tag = tags[gmath.cycle(#tags, tag_index + offset)]
    client.focus:move_to_tag(target_tag)
  end
end

-- check if a client is in floating state or
-- its first tag is in floating layout
local function _is_floating(c)
  return c.floating or c.first_tag.layout == awful.layout.suit.floating
end

M.is_floating = _is_floating

function M.move_to_next_tag()
  _move_to_tag(1)
  awful.tag.viewnext()
end

function M.move_to_prev_tag()
  _move_to_tag(-1)
  awful.tag.viewprev()
end

function M.move(direction)
  local c = client.focus
  if c then
    if _is_floating(c) then
      if direction == "up" then
        c:relative_move(0, -floating_resize_amount, 0, 0)
      elseif direction == "down" then
        c:relative_move(0, floating_resize_amount, 0, 0)
      elseif direction == "left" then
        c:relative_move(-floating_resize_amount, 0, 0, 0)
      elseif direction == "right" then
        c:relative_move(floating_resize_amount, 0, 0, 0)
      end
    elseif awful.layout.get(mouse.screen) ~= awful.layout.suit.floating then
      awful.client.swap.bydirection(direction, c)
    end
  end
end

function M.resize(direction)
  local c = client.focus
  if c and _is_floating(c) then
    if direction == "up" then
      c:relative_move(0, 0, 0, -floating_resize_amount)
    elseif direction == "down" then
      c:relative_move(0, 0, 0, floating_resize_amount)
    elseif direction == "left" then
      c:relative_move(0, 0, -floating_resize_amount, 0)
    elseif direction == "right" then
      c:relative_move(0, 0, floating_resize_amount, 0)
    end
  elseif awful.layout.get(mouse.screen) ~= awful.layout.suit.floating then
    if direction == "up" then
      awful.client.incwfact(-tiling_resize_factor)
    elseif direction == "down" then
      awful.client.incwfact(tiling_resize_factor)
    elseif direction == "left" then
      awful.tag.incmwfact(-tiling_resize_factor)
    elseif direction == "right" then
      awful.tag.incmwfact(tiling_resize_factor)
    end
  end
end

return M
