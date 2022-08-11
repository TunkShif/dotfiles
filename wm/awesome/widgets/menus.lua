local awful = require("awful")
local menubar = require("menubar")
local beautiful = require("beautiful")
local apps = require("config").apps

local awesome_menu = {
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

menubar.utils.terminal = apps.terminal -- Set the terminal for applications that require it

return {
  main_menu = main_menu,
}
