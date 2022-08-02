local awful = require("awful")
local menubar = require("menubar")
local beautiful = require("beautiful")
local apps = require("config").apps
local hotkeys_popup = require("awful.hotkeys_popup")

local awesome_menu = {
  {
    "hotkeys",
    function()
      hotkeys_popup.show_help(nil, awful.screen.focused())
    end,
  },
  { "manual", apps.terminal .. " -e man awesome" },
  { "edit config", apps.editor .. " " .. awesome.conffile },
  { "restart", awesome.restart },
  {
    "quit",
    function()
      awesome.quit()
    end,
  },
}

local main_menu = awful.menu({
  items = {
    { "awesome", awesome_menu, beautiful.awesome_icon },
    { "open terminal", apps.terminal },
  },
})

local launcher = awful.widget.launcher({ image = beautiful.awesome_icon, menu = main_menu })

menubar.utils.terminal = apps.terminal -- Set the terminal for applications that require it

return {
  launcher = launcher,
  main_menu = main_menu,
  awesome_menu = awesome_menu,
}
