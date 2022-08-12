local gears = require("gears")
local beautiful = require("beautiful")

local M = {}

M.dpi = require("beautiful").xresources.apply_dpi

M.rounded_shape = function(cr, w, h)
  gears.shape.rounded_rect(cr, w, h, beautiful.radius_sm)
end

return M
