local wezterm = require("wezterm")
local arch = require("archconfig")

local config = wezterm.config_builder()

config = {
	-- FONT
	font_size = 16,

	-- COLOR SCHEME
	color_scheme = "Catppuccin Mocha",

	-- WINDOWS
	adjust_window_size_when_changing_font_size = false,
	window_close_confirmation = "AlwaysPrompt",

	-- TABS
	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
}
-- arch setting
arch.apply_to_config(config)

return config
