local vicious = require("vicious")
local beautiful = require("beautiful")

local badge = require("widgets.common.badge")

local interface = "wlp4s0"

local netspeed = badge.create {
  icon = "",
  text = "?? Mb/s",
  bg = beautiful.color_cyan
}

vicious.register(
  badge.get_text_widget(netspeed),
  vicious.widgets.net,
  string.format("${%s down_mb} MB/s", interface),
  1, interface
)

return netspeed
