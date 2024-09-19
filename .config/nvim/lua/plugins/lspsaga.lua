return {
  "nvimdev/lspsaga.nvim",
  event = "LspAttach",
  config = function()
    local lspsaga = require("lspsaga")
    lspsaga.setup({
      ui,
      lightbulb = {
        enable = false,
        enable_in_insert = false,
        sign = true,
        sign_priority = 40,
        virtual_text = true,
      },
      outline = {
        win_with = "",
        win_width = 30,
        show_detail = true,
        auto_preview = true,
        auto_refresh = true,
        auto_close = true,
        custom_sort = nil,
        keys = {
          jump = "o",
          expand_collapse = "u",
          quit = "q",
        },
      },
      symbol_in_winbar = {
        enable = false,
        separator = " ",
        hide_keyword = true,
        show_file = true,
        folder_level = 2,
        respect_root = false,
        color_mode = true,
      },
      code_action = {
        num_shortcut = true,
        show_server_name = true,
        keys = {
          -- string | table type
          quit = "q",
          exec = "<CR>",
        },
      },
      rename = {
        quit = "<ESC>",
        exec = "<CR>",
        mark = "x",
        confirm = "<CR>",
        in_select = true,
      },
    })
    return lspsaga
  end,
  keys = {
    { "gd", "<cmd>Lspsaga goto_definition<CR>", desc = "Go to Definition" },
    { "<leader>da", "<cmd>Lspsaga show_workspace_diagnostics<CR>", desc = "Show Workspace Diagnostics" },
    { "<leader>dp", "<cmd>Lspsaga preview_definition<CR>", desc = "Preview Definition" },
    { "<leader>dc", "<cmd>Lspsaga peek_definition<CR>", desc = "Peek Definition" },
    { "<leader>df", "<cmd>Lspsaga finder<CR>", desc = "Finder" },
    { "<leader>o", "<cmd>Lspsaga outline<CR>", desc = "Outline" },
    { "<leader>rn", "<cmd>Lspsaga rename ++project<CR>", desc = "Rename" },
    { "<leader>k", "<cmd>Lspsaga hover_doc<CR>", desc = "Hover Doc" },
  },
}
