local awful = require("awful")

return {
  modkey = "Mod4",
  apps = {
    terminal = "alacritty",
    editor = "neovide",
    browser = "exo-open --launch WebBrowser",
  },
  layouts = {
    awful.layout.suit.floating,
    awful.layout.suit.tile,
  },
}
