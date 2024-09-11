return {
  "nvimdev/dashboard-nvim",
  opts = function()
    local logo = [[
,---,---,---,---,---,---,---,---,---,---,---,---,---,-------,
| ~ | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 0 | [ | ] | <-    |
|---'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-----|
| ->| | " | , | . | P | Y | F | G | C | R | L | / | = |  \  |
|-----',--',--',--',--',--',--',--',--',--',--',--',--'-----|
| Caps | A | O | E | U | I | D | H | T | N | S | - |  Enter |
|------'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'--------|
|        | ; | Q | J | K | X | B | M | W | V | Z |          |
|------,-',--'--,'---'---'---'---'---'---'-,-'---',--,------|
| ctrl |  | alt |                          | alt  |  | ctrl |
'------'  '-----'--------------------------'------'  '------'
		]]

    logo = string.rep("\n", 8) .. logo .. "\n\n"
    local opts = {
      theme = "doom",
      hide = {
        statusline = false,
      },
      config = {
        header = vim.split(logo, "\n"),
				-- stylua: ignore
				center = {
					{ action = 'lua LazyVim.pick()()',                           desc = " Find File",       icon = " ", key = "f" },
					{ action = "ene | startinsert",                              desc = " New File",        icon = " ", key = "n" },
					{ action = 'lua LazyVim.pick("oldfiles")()',                 desc = " Recent Files",    icon = " ", key = "r" },
					{ action = 'lua LazyVim.pick("live_grep")()',                desc = " Find Text",       icon = " ", key = "g" },
					{ action = 'lua LazyVim.pick.config_files()()',              desc = " Config",          icon = " ", key = "c" },
					{ action = 'lua require("persistence").load()',              desc = " Restore Session", icon = " ", key = "s" },
					{ action = "LazyExtras",                                     desc = " Lazy Extras",     icon = " ", key = "x" },
					{ action = "Lazy",                                           desc = " Lazy",            icon = "󰒲 ", key = "l" },
					{ action = function() vim.api.nvim_input("<cmd>qa<cr>") end, desc = " Quit",            icon = " ", key = "q" },
				},
        footer = function()
          local stats = require("lazy").stats()
          local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
          return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
        end,
      },
    }
    return opts
  end,
}
