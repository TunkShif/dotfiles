local awful = require("awful")
local wibox = require("wibox")
local gears = require("gears")
local beautiful = require("beautiful")

local dpi = require("utils").theme.dpi

local powermenu = wibox.widget {
  widget = wibox.widget.background,
  forced_width = dpi(30),
  forced_height = dpi(30),
  bg = beautiful.color_red,
  fg = beautiful.color_black,
  shape = function(cr, w, h)
    gears.shape.rounded_rect(cr, w, h, beautiful.radius_sm)
  end,
  {
    widget = wibox.widget.textbox,
    text = "",
    align = "center",
    valign = "center",
    font = "FontAwesome 6 Free Regular 12",
  }
}

-- launcher:buttons({ awful.button({}, 1, function() menus.main_menu:toggle() end) })

return powermenu
