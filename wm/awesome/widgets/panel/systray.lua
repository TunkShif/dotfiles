local wibox = require("wibox")
local utils = require("utils")
local beautiful = require("beautiful")

local dpi = utils.theme.dpi

local systray = wibox.widget.systray()

systray.base_size = dpi(22)


return wibox.widget {
  widget = wibox.container.background,
  bg = beautiful.color_gray,
  forced_height = dpi(30),
  shape = utils.theme.rounded_shape,
  {
    widget = wibox.container.margin,
    margins = dpi(4),
    systray
  }
}
