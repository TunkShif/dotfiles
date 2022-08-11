local awful = require("awful")

local enabled_layotus = require("config").layouts

local icon = ""

tag.connect_signal("request::default_layouts", function()
  awful.layout.append_default_layouts(enabled_layotus)
end)

screen.connect_signal("request::desktop_decoration", function(s)
  awful.tag({ icon, icon, icon, icon }, s, awful.layout.suit.tile)
  awful.tag.add(icon, {
    layout = awful.layout.suit.floating,
    screen = s
  })
end)
