local opt = vim.opt
opt.number = true
opt.tabstop = 3
opt.shiftwidth = 2
opt.smartcase = true
opt.smartindent = true
opt.spelllang = { "en" }
opt.autoread = true
opt.cursorline = true
opt.wrap = true
opt.listchars:append({
  eol = "↲",
  tab = ">>",
  trail = "-",
  extends = ">",
  precedes = "<",
  nbsp = "@",
})
vim.g.lazyvim_eslint_auto_format = true
