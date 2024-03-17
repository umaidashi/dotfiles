return {
  "akinsho/toggleterm.nvim",
  config = true,
  version = "*",
  keys = {
    { "<C-/>", "<cmd>ToggleTerm<cr>", desc = "ToggleTerm float" },
  },
  opts = {
    open_mapping = [[<C-/>]],
    direction = "float",
    dir = ".",
  },
}
