local awful = require("awful")
local wibox = require("wibox")
local beautiful = require("beautiful")

local dpi = require("utils").theme.dpi

local launcher = require("widgets.panel.launcher")
local layout_switcher = require("widgets.panel.layout_switcher")
local powermenu = require("widgets.panel.powermenu")
local systray = require("widgets.panel.systray")
local taglist = require("widgets.panel.taglist")
local clock = wibox.widget.textclock("%H:%M | %b %d")

screen.connect_signal("request::desktop_decoration", function(s)
  s.taglist = taglist.create(s)

  s.panel = awful.wibar({
    screen = s,
    position = "top",
    height = dpi(30),
    border_width = dpi(4),
    border_color = beautiful.color_bg,
  })

  s.panel:setup {
    layout = wibox.layout.stack,
    {
      layout = wibox.layout.align.horizontal,
      { -- Left
        layout = wibox.layout.fixed.horizontal,
        spacing = dpi(8),
        launcher,
        s.taglist,
        layout_switcher,
      },
      nil,
      { -- Right
        layout = wibox.layout.fixed.horizontal,
        spacing = dpi(8),
        systray,
        powermenu,
      },
    },
    {
      layout = wibox.container.place,
      align = "center",
      valign = "center",
      clock,
    }
  }
end)
