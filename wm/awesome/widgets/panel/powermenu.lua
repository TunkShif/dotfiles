local awful = require("awful")
local beautiful = require("beautiful")

local button = require("widgets.common.button")

local powermenu = button.create {
  icon = "",
  bg = beautiful.color_red,
  fg = beautiful.color_black,
}

return powermenu
