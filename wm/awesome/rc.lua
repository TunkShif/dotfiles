pcall(require, "luarocks.loader")

local awful = require("awful")
local gears = require("gears")

-- Awesome Modules
require("core")
require("theme")
require("widgets")
require("awful.autofocus")

-- Autostart Applications
awful.spawn.with_shell(gears.filesystem.get_configuration_dir() .. "autostart")
