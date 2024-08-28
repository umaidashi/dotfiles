vim.cmd.packadd "packer.nvim"

require("packer").startup(function()
  -- colorscheme
  use "EdenEast/nightfox.nvim"

  -- icon
  use "kyazdani42/nvim-web-devicons"
  use "nvim-tree/nvim-web-devicons"

  -- nerdtree
  use "preservim/nerdtree"
  use "Xuyuanp/nerdtree-git-plugin"

  -- floaterm
  use "voldikss/vim-floaterm"

  -- treesitter
  use "nvim-treesitter/nvim-treesitter"

  -- fzf
  use "junegunn/fzf.vim"

  -- telescope
  use "nvim-lua/popup.nvim"
  use "nvim-lua/plenary.nvim"
  use "nvim-telescope/telescope.nvim"

  -- git
  use "kdheepak/lazygit.nvim"
  use "nvim-lua/plenary.nvim"
  use "lewis6991/gitsigns.nvim"
  
  -- lsp
  use "neovim/nvim-lspconfig"

  -- completion
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-vsnip"
  use "hrsh7th/vim-vsnip"

  -- copilot
  use "github/copilot.vim"
end)


require('gitsigns').setup()

