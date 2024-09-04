local use = require("packer").use
local fn = vim.fn
local execute = vim.api.nvim_command

local install_path = fn.stdpath("data") .. "~/.local/share/nvim-lua/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({
		"git",
		"clone",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	execute("packadd packer.nvim")
end

require("packer").startup(function()
	-- colorscheme
	use("EdenEast/nightfox.nvim")

	-- icon
	use("kyazdani42/nvim-web-devicons")
	use("nvim-tree/nvim-web-devicons")

	-- common
	use("nvim-lua/plenary.nvim")

	-- nerdtree
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional
		},
	})

	-- bufferline
	use({
		"akinsho/bufferline.nvim",
		tag = "*",
		requires = "nvim-tree/nvim-web-devicons",
	})
	use("kazhala/close-buffers.nvim")

	-- statusline
	use({
		"nvim-lualine/lualine.nvim",
		requires = {
			"nvim-tree/nvim-web-devicons",
			opt = true,
		},
	})

	-- floaterm
	use("voldikss/vim-floaterm")

	-- treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	-- ui
	use("folke/noice.nvim")
	use("MunifTanjim/nui.nvim")
	use("rcarriga/nvim-notify")

	-- telescope
	use("nvim-lua/popup.nvim")
	use({
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- git
	use("kdheepak/lazygit.nvim")
	use("lewis6991/gitsigns.nvim")
	use("ahmedkhalf/project.nvim")
	use("linrongbin16/gitlinker.nvim")

	-- lsp
	use("neovim/nvim-lspconfig")
	use("nvimdev/lspsaga.nvim")

	-- completion
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-vsnip")
	use("hrsh7th/vim-vsnip")

	-- copilot
	use("github/copilot.vim")

	-- commentout
	use("numToStr/Comment.nvim")

	-- error
	use("folke/trouble.nvim")

	-- utils
	use("kevinhwang91/nvim-bqf")
	use("Wansmer/treesj")
	use("windwp/nvim-autopairs")
end)
