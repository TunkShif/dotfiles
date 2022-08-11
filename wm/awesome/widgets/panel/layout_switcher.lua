local awful = require("awful")
local wibox = require("wibox")
local gears = require("gears")
local beautiful = require("beautiful")

local dpi = require("utils").theme.dpi

local layout_icons = {
  tile = "",
  floating = ""
}

local layout_switcher = wibox.widget {
  widget = wibox.widget.background,
  forced_width = dpi(30),
  forced_height = dpi(30),
  bg = beautiful.color_gray,
  fg = beautiful.color_white,
  shape = function(cr, w, h)
    gears.shape.rounded_rect(cr, w, h, beautiful.radius_sm)
  end,
  {
    widget = wibox.widget.textbox,
    text = "",
    font = "Font Awesome 6 Free Solid 11",
    align = "center",
    valign = "center",
    buttons = {
      awful.button({}, 1, function() awful.layout.inc(1) end),
      awful.button({}, 3, function() awful.layout.inc(-1) end),
      awful.button({}, 4, function() awful.layout.inc(1) end),
      awful.button({}, 5, function() awful.layout.inc(-1) end)
    }
  }
}

local on_tag_layout_change = function()
  local layout = awful.layout.get(mouse.screen).name
  layout_switcher.children[1].text = layout_icons[layout]
end

tag.connect_signal("property::selected", on_tag_layout_change)
tag.connect_signal("property::layout", on_tag_layout_change)

return layout_switcher
