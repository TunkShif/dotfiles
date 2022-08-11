local awful = require("awful")
local wibox = require("wibox")
local beautiful = require("beautiful")

screen.connect_signal("request::wallpaper", function(s)
  awful.wallpaper({
    screen = s,
    widget = {
      widget                = wibox.widget.imagebox,
      image                 = beautiful.wallpaper,
      upscale               = true,
      downscale             = true,
      horizontal_fit_policy = "fit",
      vertical_fit_policy   = "fit",
    },
  })
end)
