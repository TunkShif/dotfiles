local awful = require("awful")
local ruled = require("ruled")

ruled.client.connect_signal("request::rules", function()
  -- default rules for all clients
  ruled.client.append_rule {
    id = "global",
    rule = {},
    properties = {
      focus = awful.client.focus.filter,
      raise = true,
      screen = awful.screen.preferred,
      placement = awful.placement.no_overlap + awful.placement.no_offscreen + awful.placement.centered,
    },
  }

  -- rules for floating clients
  ruled.client.append_rule {
    id = "floating",
    rule_any = {
      instance = { "copyq", "pinentry" },
      class = {
        "Anki",
        "Blueman-manager",
        "Lxappearance",
        "Thunar",
        "MultiMC",
        "Xfce4-taskmanager"
      },
      name = {
        "Event Tester", -- xev.
      },
      role = {
        "AlarmWindow",
        "ConfigManager",
        "pop-up",
      },
    },
    properties = {
      floating = true,
    },
  }

  -- enable titlebar for normal clients and dialogs
  ruled.client.append_rule {
    id = "titlebars",
    rule_any = { type = { "dialog" } },
    properties = { titlebars_enabled = true },
  }

  -- auto move to tag 2
  ruled.client.append_rule {
    rule_any   = {
      class = {
        "Google-chrome",
        "Firefox"
      }
    },
    properties = { screen = 1, tag = screen[1].tags[2] }
  }
end)
