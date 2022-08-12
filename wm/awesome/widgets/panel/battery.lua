local vicious = require("vicious")
local beautiful = require("beautiful")

local badge = require("widgets.common.badge")

local battery = badge.create {
  icon = "",
  text = "??%",
  bg = beautiful.color_green
}

vicious.cache(vicious.widgets.bat)
vicious.register(badge.get_text_widget(battery), vicious.widgets.bat, "$2%", 123, "BAT0")

return battery
