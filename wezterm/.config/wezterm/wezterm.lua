-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = "AdventureTime"
config.color_scheme = "Catppuccin Macchiato"

config.window_decorations = "RESIZE"
config.window_close_confirmation = "NeverPrompt" -- 'AlwaysPrompt'
config.use_dead_keys = false

config.font = wezterm.font("Fira Code")

-- config.font_size = 14.0

config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = false
config.hide_tab_bar_if_only_one_tab = true

config.window_padding = {
  left = '0.5cell',
  right = '0.5cell',
  top = '0.25cell',
  bottom = '0.25cell',
}

return config
