local awful = require("awful")

return {
  modkey = "Mod4",
  apps = {
    terminal = "alacritty",
    editor = "neovide",
    browser = "exo-open --launch WebBrowser",
    launcher = "rofi -show drun -theme launcher",
    clipboard = "rofi -show clip -theme clipboard"
  },
  layouts = {
    awful.layout.suit.tile,
    awful.layout.suit.floating,
  },
}
