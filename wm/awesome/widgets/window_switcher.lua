local awful = require("awful")
local bling = require("bling")

bling.widget.window_switcher.enable {
  type = "thumbnail",

  hide_window_switcher_key = "Escape",
  minimize_key = "z",
  unminimize_key = "Z",
  kill_client_key = "x",
  cycle_key = "Tab",
  previous_key = "Left",
  next_key = "Right",
  vim_previous_key = "h",
  vim_next_key = "l",

  cycleClientsByIdx = awful.client.focus.byidx,
  filterClients = awful.widget.tasklist.filter.currenttags,
}
