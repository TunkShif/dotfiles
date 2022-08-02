local awful = require("awful")

local enabled_layotus = require("config").layouts

tag.connect_signal("request::default_layouts", function()
  awful.layout.append_default_layouts(enabled_layotus)
end)

screen.connect_signal("request::desktop_decoration", function(s)
  -- Each screen has its own tag table.
  awful.tag({ "1", "2", "3", "4", "5" }, s, awful.layout.layouts[1])
end)
