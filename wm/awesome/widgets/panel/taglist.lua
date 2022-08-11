local awful = require("awful")
local wibox = require("wibox")
local gears = require("gears")
local beautiful = require("beautiful")

local dpi = require("utils").theme.dpi

local M = {}

function M.create(s)
  local taglist = awful.widget.taglist {
    screen = s,
    filter = awful.widget.taglist.filter.all,
    layout = {
      layout = wibox.layout.fixed.horizontal,
      spacing = dpi(2),
    },
    widget_template = {
      widget = wibox.container.margin,
      margins = { left = dpi(8), right = dpi(8), top = dpi(4), bottom = dpi(4) },
      {
        widget = wibox.container.background,
        bg = beautiful.color_gray,
        fg = beautiful.color_white,
        {
          id = "text_role",
          widget = wibox.widget.textbox,
        }
      }
    },
    buttons = {
      awful.button({}, 1, function(t) t:view_only() end),
      awful.button({}, 4, function(t) awful.tag.viewprev(t.screen) end),
      awful.button({}, 5, function(t) awful.tag.viewnext(t.screen) end),
    },
  }

  return wibox.widget {
    widget = wibox.container.background,
    bg = beautiful.color_gray,
    forced_height = dpi(30),
    shape = function(cr, w, h)
      gears.shape.rounded_rect(cr, w, h, beautiful.radius_sm)
    end,
    taglist
  }
end

return M
