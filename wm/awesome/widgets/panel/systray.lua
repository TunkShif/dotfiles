local wibox = require("wibox")
local gears = require("gears")
local beautiful = require("beautiful")

local dpi = require("utils").theme.dpi

local systray = wibox.widget.systray()

systray.base_size = dpi(22)


return wibox.widget {
  widget = wibox.container.background,
  bg = beautiful.color_gray,
  forced_height = dpi(30),
  shape = function(cr, w, h)
    gears.shape.rounded_rect(cr, w, h, beautiful.radius_sm)
  end,
  {
    widget = wibox.container.margin,
    margins = { top = dpi(4), bottom = dpi(4), left = dpi(8), right = dpi(8) },
    systray
  }
}
