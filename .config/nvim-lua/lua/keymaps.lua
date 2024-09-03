local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

--local keymap = vim.keymap
local keymap = vim.api.nvim_set_keymap

-- Leader
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- no yank
keymap("n", "x", "_x", opts)
keymap("n", "c", "_c", opts)

-- quit
keymap("n", "qq", "<cmd>qa!<CR>", opts)
keymap("n", "qw", "<cmd>wqa!<CR>", opts)
keymap("n", "ss", "<cmd>w<CR>", opts)

-- cursor
keymap("n", "J", "10j", opts)
keymap("n", "K", "10k", opts)

-- in insert mode
keymap("i", "jj", "<Esc>", opts)
keymap("i", "<C-p>", "<Up>", opts)
keymap("i", "<C-n>", "<Down>", opts)
keymap("i", "<C-b>", "<Left>", opts)
keymap("i", "<C-f>", "<Right>", opts)

-- buffer
keymap("n", "H", "<cmd>bp<CR>", opts)
keymap("n", "L", "<cmd>bn<CR>", opts)

-- pane
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- lazygit
keymap("n", "<leader>g", "<cmd>LazyGit<CR>", opts)

-- Telescope
keymap("n", "ff", "<cmd>Telescope find_files find_command=rg,--files,--hidden,--glob,!*.git<CR>", opts)
keymap(
	"n",
	"fg",
	"<cmd>Telescope live_grep vimgrep_arguments=rg,--line-number,--column,--smart-case,--hidden,--no-ignore,--glob,!*.git<CR>",
	opts
)
keymap("n", "fb", "<cmd>Telescope buffers --hidden,--glob,!*.git<CR>", opts)
keymap("n", "fh", "<cmd>Telescope help_tags<CR>", opts)

-- nvim-tree
keymap("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", opts)

-- lspsaga
keymap("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)
keymap("n", "<leader>k", "<cmd>Lspsaga hover_doc<CR>", opts)
keymap("n", "<leader>dc", "<cmd>Lspsaga peek_definition<CR>", opts)
keymap("n", "<leader>df", "<cmd>Lspsaga finder<CR>", opts)
keymap("n", "<leader>o", "<cmd>Lspsaga outline<CR>", opts)
keymap("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts)
