return {
  "mikavilpas/yazi.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = {
    {
      "<leader>-",
      "<cmd>Yazi<cr>",
      desc = "Open yazi at the current file",
    },
    {
      "<leader>cw",
      "<cmd>Yazi cwd<cr>",
      desc = "Open yazi in nvim's working directory",
    },
    {
      "<leader>yr",
      "<cmd>Yazi toggle<cr>",
      desc = "Resume last yazi session",
    },
  },
  opts = {
    -- ディレクトリを開くときにyaziを使う
    open_for_directories = true,

    -- 複数タブで開く
    open_multiple_tabs = true,

    -- 同じディレクトリのバッファをハイライト
    highlight_hovered_buffers_in_same_directory = true,

    -- フローティングウィンドウ設定
    floating_window_scaling_factor = 0.9,
    yazi_floating_window_border = "rounded",
    yazi_floating_window_winblend = 0,

    -- キーマップ
    keymaps = {
      show_help = "<f1>",
      open_file_in_vertical_split = "<c-v>",
      open_file_in_horizontal_split = "<c-s>",
      open_file_in_tab = "<c-t>",
      grep_in_directory = "<c-g>",
      replace_in_directory = "<c-r>",
      cycle_open_buffers = "<tab>",
      copy_relative_path_to_selected_files = "<c-y>",
      send_to_quickfix_list = "<c-q>",
    },

    integrations = {
      grep_in_directory = function(directory)
        -- Telescopeで検索
        require("telescope.builtin").live_grep({
          cwd = directory,
        })
      end,
      replace_in_directory = function(directory)
        -- grug-far.nvimがあれば使用
        local ok, grug = pcall(require, "grug-far")
        if ok then
          grug.open({ prefills = { paths = directory } })
        else
          vim.notify("grug-far.nvim is not installed", vim.log.levels.WARN)
        end
      end,
    },
  },
}