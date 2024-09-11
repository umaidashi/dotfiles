return {
  "nvimdev/lspsaga.nvim",
  config = function()
    require("lspsaga").setup({
      symbol_in_winbar = {
        enable = true,
      },
      ui = {
        border = "single",
        title = false,
      },
      lightbulb = {
        enable = true,
        sign = false,
      },
      code_action_lightbulb = {
        enable = true,
      },
      show_outline = {
        win_width = 50,
        auto_preview = false,
      },
    })
    on_attach = function(client, bufnr)
      client.server_capabilities.documentFormattingProvider = false
    end
  end,
}
