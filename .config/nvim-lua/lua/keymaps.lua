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

