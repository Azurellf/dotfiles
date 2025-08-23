local wezterm = require("wezterm")

local module = {}

local unix = {}

local win = {
	default_prog = { "C:/msys64/msys2_shell.cmd", "-defterm", "-here", "-no-start", "-ucrt64", "-shell zsh" },
}

function module.apply_to_config(config)
	local dir_sep = package.config:sub(1, 1)

	if dir_sep == "\\" then
		wezterm.log_info("Win")
		config.default_prog = win.default_prog
	end
end

return module
