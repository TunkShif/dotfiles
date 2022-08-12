pcall(require, "luarocks.loader")

local awful = require("awful")
local gears = require("gears")

-- Load External Libraries From `lib` Folder
local lib_path = gears.filesystem.get_configuration_dir() .. "lib"
package.path = package.path .. string.format(";%s/?.lua", lib_path)
package.path = package.path .. string.format(";%s/?/init.lua", lib_path)

-- Awesome Modules
require("core")
require("theme")
require("widgets")
require("awful.autofocus")

-- Autostart Applications
awful.spawn.with_shell(gears.filesystem.get_configuration_dir() .. "autostart")
