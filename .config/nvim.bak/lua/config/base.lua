vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.g.autoformat = true
vim.g.lazyvim_picker = "auto"
vim.g.root_spec = { "lsp", { ".git", "lua" }, "cwd" }
vim.g.lazygit_config = true
vim.g.lazyvim_statuscolumn = {
	folds_open = false, -- show fold sign when fold is open
	folds_githl = false, -- highlight fold sign with git sign color
}
vim.g.deprecation_warnings = false
vim.g.bigfile_size = 1024 * 1024 * 1.5 -- 1.5 MB
vim.g.trouble_lualine = true

local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.smartcase = true -- Don't ignore case with capitals
opt.smartindent = true -- Insert indents automatically
opt.spelllang = { "en" }
opt.autoread = true
