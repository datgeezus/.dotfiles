local wezterm = require 'wezterm'

local config = {}

config = wezterm.config_builder()

-- config.color_scheme = 'Catppuccin Mocha'
config.color_scheme = 'Chalk (base16)'
config.font = wezterm.font 'Berkeley Mono'
config.font_size = 14

return config
