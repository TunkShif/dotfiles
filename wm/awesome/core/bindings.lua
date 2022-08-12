local awful = require("awful")
local utils = require("utils")
local bling = require("bling")

local mod = require("config").modkey
local apps = require("config").apps

bling.module.flash_focus.enable()

local key = function(args)
  local strokes = args[1]
  local keycode = table.remove(strokes, #strokes)
  local modifiers = strokes
  local func = args.func
  local group = args.group
  local description = args.desc
  return awful.key(modifiers, keycode, func, { group = group, description = description })
end

-- General Keybindings
awful.keyboard.append_global_keybindings({
  key {
    { mod, "`" },
    group = "awesome",
    desc = "show help",
    func = require("awful.hotkeys_popup").show_help
  },
  key {
    { mod, "Shift", "r" },
    group = "awesome",
    desc = "restart awesome",
    func = awesome.restart
  },
  key {
    { mod, "Shift", "q" },
    group = "awesome",
    desc = "quit awesome",
    func = awesome.quit
  },
  key {
    { mod, "Return" },
    group = "launcher",
    desc = "open a terminal",
    func = function()
      awful.spawn(apps.terminal)
    end
  },
  key {
    { mod, "d" },
    group = "launcher",
    desc = "open application launcher",
    func = function()
      awful.spawn(apps.launcher)
    end
  },
  key {
    { mod, "v" },
    group = "launcher",
    desc = "open clipboard history",
    func = function()
      awful.spawn(apps.clipboard)
    end
  },
  key {
    { mod, "Tab" },
    group = "launcher",
    desc = "show window switcher",
    func = function()
      awesome.emit_signal("bling::window_switcher::turn_on")
    end
  }
})

-- Focus Related Keybindings
awful.keyboard.append_global_keybindings({
  key {
    { mod, "j" },
    group = "client",
    desc = "move focus down",
    func = function()
      awful.client.focus.bydirection("down")
      client.focus:raise()
    end
  },
  key {
    { mod, "k" },
    group = "client",
    desc = "move focus up",
    func = function()
      awful.client.focus.bydirection("up")
      client.focus:raise()
    end
  },
  key {
    { mod, "h" },
    group = "client",
    desc = "move focus left",
    func = function()
      awful.client.focus.bydirection("left")
      client.focus:raise()
    end
  },
  key {
    { mod, "l" },
    group = "client",
    desc = "move focus right",
    func = function()
      awful.client.focus.bydirection("right")
      client.focus:raise()
    end
  },
})

-- Client Related Keybindings
awful.keyboard.append_global_keybindings({
  key {
    { mod, "Shift", "j" },
    group = "client",
    desc = "move downwards",
    func = function()
      utils.client.move("down")
    end
  },
  key {
    { mod, "Shift", "k" },
    group = "client",
    desc = "move upwards",
    func = function()
      utils.client.move("up")
    end
  },
  key {
    { mod, "Shift", "h" },
    group = "client",
    desc = "move leftwards",
    func = function()
      utils.client.move("left")
    end
  },
  key {
    { mod, "Shift", "l" },
    group = "client",
    desc = "move rightwards",
    func = function()
      utils.client.move("right")
    end
  },
  key {
    { mod, "Mod1", "j" },
    group = "client",
    desc = "resize downwards",
    func = function()
      utils.client.resize("down")
    end
  },
  key {
    { mod, "Mod1", "k" },
    group = "client",
    desc = "resize upwards",
    func = function()
      utils.client.resize("up")
    end
  },
  key {
    { mod, "Mod1", "h" },
    group = "client",
    desc = "resize leftwards",
    func = function()
      utils.client.resize("left")
    end
  },
  key {
    { mod, "Mod1", "l" },
    group = "client",
    desc = "resize rightwards",
    func = function()
      utils.client.resize("right")
    end
  },
})

-- Layout Related Bindings
awful.keyboard.append_global_keybindings({
  key {
    { mod, "t" },
    group = "layout",
    desc = "cycle layout",
    func = function()
      awful.layout.inc(1)
    end
  }
})

client.connect_signal("request::default_keybindings", function()
  awful.keyboard.append_client_keybindings({
    key {
      { mod, "x" },
      group = "client",
      desc = "close",
      func = function(c)
        c:kill()
      end
    },
    key {
      { mod, "f" },
      group = "clien",
      desc = "toggle fullscreen",
      func = function(c)
        c.fullscreen = not c.fullscreen
        c:raise()
      end
    },
    key {
      { mod, "s" },
      group = "client",
      desc = "toggle floating",
      func = function(c)
        awful.client.floating.toggle(c)
        c:raise()
      end
    },
    key {
      { mod, "m" },
      group = "client",
      desc = "(un)maximize",
      func = function(c)
        c.maximized = not c.maximized
        c:raise()
      end
    },
    key {
      { mod, "z" },
      group = "client",
      desc = "minimize",
      func = function(c)
        c.minimized = not c.minimized
      end
    },
    key {
      { mod, "Shift", "Return" },
      group = "client",
      desc = "move to master",
      func = function(c)
        c:swap(awful.client.getmaster())
      end
    },
  })
end)

-- Tags Related Keybindings
awful.keyboard.append_global_keybindings({
  key {
    { mod, "n" },
    group = "tag",
    desc = "view next",
    func = awful.tag.viewnext
  },
  key {
    { mod, "p" },
    group = "tag",
    desc = "view previous",
    func = awful.tag.viewprev
  },
  key {
    { mod, "Shift", "n" },
    group = "tag",
    desc = "move client to next tag",
    func = utils.client.move_to_next_tag
  },
  key {
    { mod, "Shift", "p" },
    group = "tag",
    desc = "move client to previous tag",
    func = utils.client.move_to_prev_tag
  },
})

awful.keyboard.append_global_keybindings({
  awful.key({
    modifiers = { mod },
    keygroup = "numrow",
    description = "only view tag",
    group = "tag",
    on_press = function(index)
      local screen = awful.screen.focused()
      local tag = screen.tags[index]
      if tag then
        tag:view_only()
      end
    end,
  }),
  awful.key({
    modifiers = { mod, "Shift" },
    keygroup = "numrow",
    description = "move focused client to tag",
    group = "tag",
    on_press = function(index)
      if client.focus then
        local tag = client.focus.screen.tags[index]
        if tag then
          client.focus:move_to_tag(tag)
        end
      end
    end,
  }),
})

-- Mouse Bindings
client.connect_signal("request::default_mousebindings", function()
  awful.mouse.append_client_mousebindings({
    awful.button({}, 1, function(c)
      c:activate({ context = "mouse_click" })
    end),
    awful.button({ mod }, 1, function(c)
      c:activate({ context = "mouse_click", action = "mouse_move" })
    end),
    awful.button({ mod }, 3, function(c)
      c:activate({ context = "mouse_click", action = "mouse_resize" })
    end),
  })
end)

awful.mouse.append_global_mousebindings({
  awful.button({}, 4, awful.tag.viewprev),
  awful.button({}, 5, awful.tag.viewnext),
})
