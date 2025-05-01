-- Pull in the wezterm API
local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'ayu'
config.colors = {
  background = 'black'
}

config.font = wezterm.font('MonaspiceAr Nerd Font Mono', { weight = "Black" })
config.font_size = 12

config.window_background_opacity = 0.7

config.hide_tab_bar_if_only_one_tab = true

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0
}

return config
