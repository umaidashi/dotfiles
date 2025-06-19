return {
  "diegoulloao/nvim-file-location",
  config = function()
    require("nvim-file-location").setup({
      keymap = "<leader>fl",
    })
  end,
}