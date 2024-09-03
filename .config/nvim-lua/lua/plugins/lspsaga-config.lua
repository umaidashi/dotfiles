require("lspsaga").setup({
	code_action = {
		extend_gitsigns = true,
	},
	ui = {
		border = "rounded",
	},
	symbol_in_winbar = {
		enable = false,
	},
	lightbulb = {
		sign = false,
	},
	outline = {
		win_width = 50,
		keys = {
			toggle_or_jump = "<cr>",
		},
	},
})
