return {
  "nvimdev/lspsaga.nvim",
  event = "LspAttach",
  config = function()
    require("config.lspsaga")
  end,
}
