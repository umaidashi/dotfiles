return {
  "mhartington/formatter.nvim",
  config = function()
    local biome = function()
      local util = require("formatter.util")
      return {
        exe = "biome",
        args = {
          "format",
          "--stdin-file-path",
          util.escape_path(util.get_current_buffer_file_path()),
        },
        stdin = true,
      }
    end
    require("formatter").setup({
      filetype = {
        javascript = { biome },
        javascriptreat = { biome },
        typescriptreact = { biome },
        typescript = { biome },
        json = { biome },
      },
    })
  end,
}
