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
  keys = {
    { "<leader>ca", "<cmd>Lspsaga code_action<CR>", desc = "Code Action" },
    {
      "<leader>k",
      "<cmd>Lspsaga hover_doc<CR>",
      desc = "Doc",
    },
    {
      "<leader>dc",
      "<cmd>Lspsaga peek_definition<CR>",
      desc = "Definition",
    },
    {
      "<leader>df",
      "<cmd>Lspsaga finder<CR>",
      desc = "Finder",
    },
    {
      "<leader>o",
      "<cmd>Lspsaga outline<CR>",
      desc = "Outline",
    },
    {
      "<leader>rn",
      "<cmd>Lspsaga rename<CR>",
      desc = "Rename",
    },
    -- nnoremap <Leader>k <Cmd>Lspsaga hover_doc<CR>
    -- nnoremap <Leader>dc <Cmd>Lspsaga peek_definition<CR>
    -- nnoremap <Leader>df <Cmd>Lspsaga finder<CR>
    -- nnoremap <Leader>o <Cmd>Lspsaga outline<CR>
    -- nnoremap <Leader>rn <Cmd>Lspsaga rename<CR>
  },
}
