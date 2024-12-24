local set = vim.keymap.set
local del = vim.keymap.del
local Util = require("lazyvim.util")

set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
set({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
set({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })

set({ "n", "x" }, "J", "10j", { desc = "Down 10" })
set({ "n", "x" }, "K", "10k", { desc = "Up 10" })

set("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
set("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
set("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
set("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

set({ "n", "x" }, "qq", "<cmd>qa!<cr>", { desc = "Quit" })
set({ "n", "x" }, "wq", "<cmd>wqa!<cr>", { desc = "Save and Quit" })
set({ "n", "x" }, "<leader>w", "<cmd>w<cr>", { desc = "Save" })

set("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
set("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
set("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
set("n", "]b", "<cmd>bnext<cr>", { desc = "Next Buffer" })

set("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })

set("i", "<C-p>", "<Up>", { desc = "Up" })
set("i", "<C-n>", "<Down>", { desc = "Down" })
set("i", "<C-f>", "<Right>", { desc = "Right" })
set("i", "<C-b>", "<Left>", { desc = "Left" })

-- ターミナルにボーダーを追加する。
local lazyterm = function()
  Util.terminal(nil, { cwd = Util.root(), border = "rounded" })
end
set("n", "<leader>ft", lazyterm, { desc = "Terminal (root dir)" })
set("n", "<C-/>", lazyterm, { desc = "Terminal (root dir)" })
