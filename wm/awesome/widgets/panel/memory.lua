local vicious = require("vicious")
local beautiful = require("beautiful")

local badge = require("widgets.common.badge")

local memory = badge.create {
  icon = "",
  text = "??%",
  bg = beautiful.color_orange
}

vicious.cache(vicious.widgets.mem)
vicious.register(badge.get_text_widget(memory), vicious.widgets.mem, "$1%", 27)

return memory
