return {
	"nvim-neo-tree/neo-tree.nvim", -- File Explorer
	branch = "v2.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	dev = false,
	config = {
		popup_border_style = 'rounded',
		sources = {
			"filesystem",
		},
		filesystem = {
			filtered_items = {
				visible = true,
				hide_gitignored = false,
				hide_hidden = false,
				hide_dotfiles = false,
			},
			follow_current_file = true,
		},
	},
}
