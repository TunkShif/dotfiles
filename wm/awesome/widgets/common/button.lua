local wibox = require("wibox")
local utils = require("utils")
local beautiful = require("beautiful")

local dpi = utils.theme.dpi

local M = {}

function M.create(args)
  local icon = args.icon or "?"
  local bg = args.bg or beautiful.color_gray
  local fg = args.fg or beautiful.color_white
  local buttons = args.buttons

  local widget = wibox.widget {
    widget = wibox.widget.background,
    forced_width = dpi(30),
    forced_height = dpi(30),
    bg = bg,
    fg = fg,
    shape = utils.theme.rounded_shape,
    {
      widget = wibox.widget.textbox,
      text = icon,
      align = "center",
      valign = "center",
      font = "FontAwesome 6 Free Regular 12",
      buttons = buttons
    }
  }
  return widget
end

return M
