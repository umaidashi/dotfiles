local use = require("packer").use
local fn = vim.fn
local execute = vim.api.nvim_command

local install_path = fn.stdpath("data") .. "~/.local/share/nvim/site/pack/packer/start/packer.nvim"

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
	use("preservim/nerdtree")
	use("Xuyuanp/nerdtree-git-plugin")

	-- statusline
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
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

	-- fzf
	-- use("junegunn/fzf.vim")

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

	-- completion
	-- use("hrsh7th/cmp-nvim-lsp")
	-- use("hrsh7th/cmp-buffer")
	-- use("hrsh7th/cmp-path")
	-- use("hrsh7th/cmp-cmdline")
	-- use("hrsh7th/nvim-cmp")
	-- use("hrsh7th/cmp-vsnip")
	-- use("hrsh7th/vim-vsnip")

	-- copilot
	-- use("github/copilot.vim")

	-- commentout
	-- use("numToStr/Comment.nvim")
end)

require("gitsigns").setup()
require("plugins/lualine-config")
require("plugins/telescope-config")
