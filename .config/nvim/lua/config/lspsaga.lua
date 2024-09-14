local lspsaga = require("lspsaga")
local keymap = vim.keymap.set
local ui = {}

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

keymap("n", "gd", "<cmd>Lspsaga goto_definition<CR>")
keymap("n", "<leader>da", "<cmd>Lspsaga show_workspace_diagnostics<CR>")
keymap("n", "<leader>dc", "<cmd>Lspsaga peek_definition<CR>")
keymap("n", "<leader>df", "<cmd>Lspsaga finder<CR>")
keymap("n", "<leader>o", "<cmd>Lspsaga outline<CR>")
keymap("n", "<leader>rn", "<cmd>Lspsaga rename ++project<CR>")
keymap("n", "<leader>k", "<cmd>Lspsaga hover_doc<CR>")

--     -- nnoremap <Leader>k <Cmd>Lspsaga hover_doc<CR>
--     -- nnoremap <Leader>dc <Cmd>Lspsaga peek_definition<CR>
--     -- nnoremap <Leader>df <Cmd>Lspsaga finder<CR>
--     -- nnoremap <Leader>o <Cmd>Lspsaga outline<CR>
--     -- nnoremap <Leader>rn <Cmd>Lspsaga rename<CR>
