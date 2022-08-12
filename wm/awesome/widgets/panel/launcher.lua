local awful = require("awful")
local config = require("config")
local beautiful = require("beautiful")

local button = require("widgets.common.button")

local launcher = button.create {
  icon = "",
  bg = beautiful.color_blue,
  fg = beautiful.color_black,
  buttons = {
    awful.button({}, 1, function() awful.spawn(config.apps.launcher) end)
  }
}

return launcher
