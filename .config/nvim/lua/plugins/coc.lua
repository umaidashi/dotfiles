return {
  "neoclide/coc.nvim",
  branch = "release",
  config = function()
    vim.g.coc_global_extensions = {
      "coc-json",
      "coc-tsserver",
      "coc-css",
      "coc-yaml",
      "coc-rust-analyzer",
      "coc-sh",
      "coc-prettier",
      "coc-pyright",
      "@yaegassy/coc-volar",
    }
  end,
}
