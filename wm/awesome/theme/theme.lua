local gears = require("gears")

local dpi = require("utils").theme.dpi

local assets_dir = gears.filesystem.get_configuration_dir() .. "theme/assets/"
local icon_dir   = assets_dir .. "/icons/"

local theme = {}

theme.wallpaper = assets_dir .. "wallpaper.jpg"
theme.font = "Roboto Medium 11"
theme.icon_theme = "Papirus-Dark"

theme.color_fg        = "#E2E8F0"
theme.color_bg        = "#242B38"
theme.color_black     = "#282C34"
theme.color_blue      = "#61AFEF"
theme.color_yellow    = "#E5C07B"
theme.color_red       = "#E06C75"
theme.color_white     = "#AAB2BF"
theme.color_green     = "#98C379"
theme.color_gray      = "#3E4452"
theme.color_lightgray = "#5C6370"

theme.radius_sm = 2

theme.useless_gap   = dpi(2)
theme.border_width  = dpi(2)
theme.border_normal = theme.color_bg
theme.border_focus  = theme.color_gray

theme.bg_normal = theme.color_bg
theme.bg_focus  = theme.color_bg
theme.bg_urgent = theme.color_bg
theme.fg_normal = theme.color_fg
theme.fg_focus  = theme.color_blue
theme.fg_urgent = theme.color_red

theme.menu_height    = dpi(40)
theme.menu_width     = dpi(160)
theme.menu_icon_size = dpi(32)

-- titlebar
theme.titlebar_bg = theme.color_bg
theme.titlebar_fg = theme.color_fg

theme.titlebar_close_button_normal       = icon_dir .. "close_normal.svg"
theme.titlebar_close_button_normal_hover = icon_dir .. "close_hover.svg"
theme.titlebar_close_button_normal_press = icon_dir .. "close_press.svg"
theme.titlebar_close_button_focus        = icon_dir .. "close_focus.svg"
theme.titlebar_close_button_focus_hover  = icon_dir .. "close_hover.svg"
theme.titlebar_close_button_focus_press  = icon_dir .. "close_press.svg"

theme.titlebar_maximized_button_normal_active         = icon_dir .. "max_normal.svg"
theme.titlebar_maximized_button_normal_active_hover   = icon_dir .. "max_hover.svg"
theme.titlebar_maximized_button_normal_active_press   = icon_dir .. "max_press.svg"
theme.titlebar_maximized_button_normal_inactive       = icon_dir .. "max_normal.svg"
theme.titlebar_maximized_button_normal_inactive_hover = icon_dir .. "max_hover.svg"
theme.titlebar_maximized_button_normal_inactive_press = icon_dir .. "max_press.svg"
theme.titlebar_maximized_button_focus_active          = icon_dir .. "max_press.svg"
theme.titlebar_maximized_button_focus_active_hover    = icon_dir .. "max_press.svg"
theme.titlebar_maximized_button_focus_active_press    = icon_dir .. "max_press.svg"
theme.titlebar_maximized_button_focus_inactive        = icon_dir .. "max_focus.svg"
theme.titlebar_maximized_button_focus_inactive_hover  = icon_dir .. "max_hover.svg"
theme.titlebar_maximized_button_focus_inactive_press  = icon_dir .. "max_press.svg"

theme.titlebar_minimize_button_normal       = icon_dir .. "min_normal.svg"
theme.titlebar_minimize_button_normal_hover = icon_dir .. "min_hover.svg"
theme.titlebar_minimize_button_normal_press = icon_dir .. "min_press.svg"
theme.titlebar_minimize_button_focus        = icon_dir .. "min_focus.svg"
theme.titlebar_minimize_button_focus_hover  = icon_dir .. "min_hover.svg"
theme.titlebar_minimize_button_focus_press  = icon_dir .. "min_press.svg"

theme.titlebar_ontop_button_normal_active         = icon_dir .. "ontop_normal.svg"
theme.titlebar_ontop_button_normal_active_hover   = icon_dir .. "ontop_hover.svg"
theme.titlebar_ontop_button_normal_active_press   = icon_dir .. "ontop_press.svg"
theme.titlebar_ontop_button_normal_inactive       = icon_dir .. "ontop_normal.svg"
theme.titlebar_ontop_button_normal_inactive_hover = icon_dir .. "ontop_hover.svg"
theme.titlebar_ontop_button_normal_inactive_press = icon_dir .. "ontop_press.svg"
theme.titlebar_ontop_button_focus_active          = icon_dir .. "ontop_press.svg"
theme.titlebar_ontop_button_focus_active_hover    = icon_dir .. "ontop_press.svg"
theme.titlebar_ontop_button_focus_active_press    = icon_dir .. "ontop_press.svg"
theme.titlebar_ontop_button_focus_inactive        = icon_dir .. "ontop_focus.svg"
theme.titlebar_ontop_button_focus_inactive_hover  = icon_dir .. "ontop_hover.svg"
theme.titlebar_ontop_button_focus_inactive_press  = icon_dir .. "ontop_press.svg"

-- taglist
theme.taglist_font      = "FontAwesome 6 Free Solid 12"
theme.taglist_fg_focus  = theme.color_blue
theme.taglist_fg_urgent = theme.color_red

-- systray
theme.bg_systray           = theme.color_gray
theme.systray_max_rows     = 1
theme.systray_icon_spacing = dpi(8)

-- window switcher
theme.window_switcher_widget_bg                      = theme.color_bg
theme.window_switcher_widget_border_width            = dpi(2)
theme.window_switcher_widget_border_radius           = 2
theme.window_switcher_widget_border_color            = theme.color_gray
theme.window_switcher_clients_spacing                = dpi(10)
theme.window_switcher_client_icon_horizontal_spacing = dpi(4)
theme.window_switcher_client_width                   = dpi(140)
theme.window_switcher_client_height                  = dpi(140)
theme.window_switcher_client_margins                 = dpi(8)
theme.window_switcher_thumbnail_margins              = dpi(2)
theme.thumbnail_scale                                = true
theme.window_switcher_name_margins                   = dpi(4)
theme.window_switcher_name_forced_width              = dpi(180)
theme.window_switcher_name_font                      = "Noto Sans CJK SC Medium 10"
theme.window_switcher_name_normal_color              = theme.color_fg
theme.window_switcher_name_focus_color               = theme.color_blue
theme.window_switcher_name_valign                    = "center"
theme.window_switcher_icon_valign                    = "center"
theme.window_switcher_icon_width                     = dpi(20)

return theme
