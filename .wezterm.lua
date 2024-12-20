local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- editor
config.color_scheme = "nightfox"
config.window_background_opacity = 0.85
config.macos_window_background_blur = 20
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.show_new_tab_button_in_tab_bar = false
config.colors = {
	tab_bar = {
		inactive_tab_edge = "none",
	},
}

-- Font
config.font = wezterm.font("Roboto Mono for Powerline")
config.font_size = 16
config.use_ime = true

-- Keymapping
local act = wezterm.action
config.keys = {
	{
		key = "f",
		mods = "SHIFT|CMD",
		action = wezterm.action.ToggleFullScreen,
	},
	{
		key = "t",
		mods = "SHIFT|CTRL",
		action = act.SpawnTab("CurrentPaneDomain"),
	},
	{
		key = "d",
		mods = "CMD",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "d",
		mods = "CMD|SHIFT",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "]",
		mods = "CMD",
		action = wezterm.action.ActivatePaneDirection("Next"),
	},
	{
		key = "[",
		mods = "CMD",
		action = wezterm.action.ActivatePaneDirection("Prev"),
	},
	{
		key = "o",
		mods = "CTRL",
		action = wezterm.action({
			PaneSelect = {},
		}),
	},
	{
		key = "w",
		mods = "CMD",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
	{
		key = "LeftArrow",
		mods = "CTRL",
		action = act.SendKey({
			key = "b",
			mods = "META",
		}),
	},
	{
		key = "RightArrow",
		mods = "CTRL",
		action = act.SendKey({
			key = "f",
			mods = "META",
		}),
	},
	{
		key = "Backspace",
		mods = "CTRL",
		action = act.SendKey({
			key = "w",
			mods = "CTRL",
		}),
	},
}

return config
