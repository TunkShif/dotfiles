local wibox = require("wibox")
local utils = require("utils")
local beautiful = require("beautiful")

local dpi = utils.theme.dpi

local M = {}

function M.create(args)
  local icon = args.icon or "?"
  local text = args.text or "???"
  local bg = args.bg or beautiful.color_blue
  local fg = args.fg or beautiful.color_black

  local icon_widget = wibox.widget {
    id = "badge_icon",
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
    }
  }

  local text_widget = wibox.widget {
    widget = wibox.container.margin,
    margins = { left = dpi(8), right = dpi(8) },
    {
      id = "badge_text",
      widget = wibox.widget.textbox,
      text = text,
      align = "center",
      valign = "center",
    }
  }

  local widget = wibox.widget {
    widget = wibox.container.background,
    forced_height = dpi(30),
    bg = beautiful.color_gray,
    fg = beautiful.color_fg,
    shape = utils.theme.rounded_shape,
    {
      layout = wibox.layout.fixed.horizontal,
      icon_widget,
      text_widget
    }
  }

  return widget
end

function M.get_text_widget(widget)
  return widget.children[1].children[2].children[1]
end

return M
