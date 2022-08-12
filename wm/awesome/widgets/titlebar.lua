local awful = require("awful")
local wibox = require("wibox")

local dpi = require("utils").theme.dpi
local is_floating = require("utils").client.is_floating

client.connect_signal("request::titlebars", function(c)
  local buttons = {
    awful.button({}, 1, function()
      c:activate({ context = "titlebar", action = "mouse_move" })
    end),
    awful.button({}, 3, function()
      c:activate({ context = "titlebar", action = "mouse_resize" })
    end),
  }

  awful
      .titlebar(c, { position = "top", size = dpi(24), font = "Noto Sans CJK SC Medium 10" })
      :setup {
        layout = wibox.layout.align.horizontal,
        { -- Left
          widget = wibox.container.margin,
          margins = { top = dpi(5), bottom = dpi(5), left = dpi(4) },
          {
            layout = wibox.layout.fixed.horizontal,
            spacing = dpi(5),
            awful.titlebar.widget.closebutton(c),
            awful.titlebar.widget.maximizedbutton(c),
            awful.titlebar.widget.minimizebutton(c),
          }
        },
        { -- Center
          widget = wibox.container.margin,
          margins = { top = dpi(2), bottom = dpi(2) },
          buttons = buttons,
          { -- Title
            widget = awful.titlebar.widget.titlewidget(c),
            align = "center",
          },
        },
        { -- Right
          widget = wibox.container.margin,
          margins = { top = dpi(5), bottom = dpi(5), right = dpi(4) },
          {
            widget = awful.titlebar.widget.ontopbutton(c),
          },
        }
      }
end)

-- show titlebar when newly spawned client is
-- in floating state or in floating layout
client.connect_signal("manage", function(c)
  if c.type == "dock" then return end

  if is_floating(c) then
    awful.titlebar.show(c)
  else
    awful.titlebar.hide(c)
  end
end)

-- show titlebar when a client changes to floating state
client.connect_signal("property::floating", function(c)
  if c.type == "dock" then return end

  local is_floating_layout = false
  if c.first_tag ~= nil then
    is_floating_layout = c.first_tag.layout == awful.layout.suit.floating
  end

  if c.floating or is_floating_layout then
    awful.titlebar.show(c)
  else
    awful.titlebar.hide(c)
  end
end)

-- show titlebar when a tag changes to floating layout
tag.connect_signal("property::layout", function(t)

  local clients = t:clients()

  for _, c in pairs(clients) do
    if c.type == "dock" then return end

    if is_floating(c) then
      awful.titlebar.show(c)
    else
      awful.titlebar.hide(c)
    end
  end
end)
