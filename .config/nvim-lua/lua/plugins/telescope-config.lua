require('telescope').setup{
  defaults = {
		prompt_prefix = "🔍 ",
    mappings = {
      i = {
        ["<C-h>"] = "which_key"
      }
    }
  },
}

