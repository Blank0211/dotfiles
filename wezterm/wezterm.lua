-- Pull in the wezterm API
local wezterm = require('wezterm')
local mux = wezterm.mux
-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
config.color_scheme = 'tokyonight_night'
config.default_prog = {'pwsh.exe', '-nologo'}
config.enable_tab_bar = false
config.harfbuzz_features = {'calt=0', 'clig=0', 'liga=0'} -- disable ligatures
config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}

-- Shortcuts
config.keys = {
    {   -- [SHIFT+CTRL+N]: Toggle Fullscreen
        key = 'n',
        mods = 'SHIFT|CTRL',
        action = wezterm.action.ToggleFullScreen,
    }
}

-- and finally, return the configuration to wezterm
return config

