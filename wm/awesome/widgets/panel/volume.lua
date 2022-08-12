local vicious = require("vicious")
local beautiful = require("beautiful")

local badge = require("widgets.common.badge")

local device = "Master"

local volume = badge.create {
  icon = "",
  text = "??%",
  bg = beautiful.color_yellow
}

vicious.cache(vicious.widgets.volume)
vicious.register(badge.get_text_widget(volume), vicious.widgets.volume, "$1%", 17, device)

return volume
