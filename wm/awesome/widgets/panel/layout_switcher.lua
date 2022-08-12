local awful = require("awful")
local beautiful = require("beautiful")

local button = require("widgets.common.button")

local layout_icons = {
  tile = "",
  floating = ""
}

local layout_switcher = button.create {
  icon = "",
  bg = beautiful.color_gray,
  fg = beautiful.color_white,
  buttons = {
    awful.button({}, 1, function() awful.layout.inc(1) end),
    awful.button({}, 3, function() awful.layout.inc(-1) end),
    awful.button({}, 4, function() awful.layout.inc(1) end),
    awful.button({}, 5, function() awful.layout.inc(-1) end)
  }
}

local on_tag_layout_change = function()
  local layout = awful.layout.get(mouse.screen).name
  layout_switcher.children[1].text = layout_icons[layout]
end

tag.connect_signal("property::selected", on_tag_layout_change)
tag.connect_signal("property::layout", on_tag_layout_change)

return layout_switcher
