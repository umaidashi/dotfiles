return {
  {
    "linrongbin16/gitlinker.nvim",
    cmd = "GitLink",
    opts = {},
    keys = {
      { "<leader>gy", "<cmd>GitLink<cr>", mode = { "n", "v" }, desc = "Yank git link" },
      { "<leader>gY", "<cmd>GitLink!<cr>", mode = { "n", "v" }, desc = "Open git link" },
    },
  },
  {
    "daliusd/ghlite.nvim",
    config = function()
      require("ghlite").setup({
        debug = false, -- if set to true debugging information is written to ~/.ghlite.log file
        view_split = "vsplit", -- set to empty string '' to open in active buffer
        diff_split = "vsplit", -- set to empty string '' to open in active buffer
        comment_split = "split", -- set to empty string '' to open in active buffer
        open_command = "open", -- open command to use, e.g. on Linux you might want to use xdg-open
        merge = {
          approved = "--squash",
          nonapproved = "--auto --squash",
        },
        html_comments_command = { "lynx", "-stdin", "-dump" }, -- command to render HTML comments in PR view
        keymaps = { -- override default keymaps with the ones you prefer
          diff = {
            open_file = "gf",
            open_file_tab = "gt",
            open_file_split = "gs",
            open_file_vsplit = "gv",
            approve = "<C-A>",
          },
          comment = {
            send_comment = "<C-CR>",
          },
          pr = {
            approve = "<C-A>",
            merge = "<C-M>",
            comment = "<C-N>",
          },
        },
      })
    end,
    keys = {
      { "<leader>us", ":GHLitePRSelect<cr>", silent = true },
      { "<leader>uo", ":GHLitePRCheckout<cr>", silent = true },
      { "<leader>uv", ":GHLitePRView<cr>", silent = true },
      { "<leader>uu", ":GHLitePRLoadComments<cr>", silent = true },
      { "<leader>up", ":GHLitePRDiff<cr>", silent = true },
      { "<leader>ul", ":GHLitePRDiffview<cr>", silent = true },
      { "<leader>ua", ":GHLitePRAddComment<cr>", silent = true },
      { "<leader>ua", ":GHLitePRAddComment<cr>", mode = "v", silent = true },
      { "<leader>uc", ":GHLitePRUpdateComment<cr>", silent = true },
      { "<leader>ud", ":GHLitePRDeleteComment<cr>", silent = true },
      { "<leader>ug", ":GHLitePROpenComment<cr>", silent = true },
    },
  },
  {
    "sindrets/diffview.nvim",
  },
  { "rhysd/git-messenger.vim" },
}
