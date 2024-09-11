-- autosave
local function save()
  local buf = vim.api.nvim_get_current_buf()

  vim.api.nvim_buf_call(buf, function()
    vim.cmd("silent! write")
  end)
end

vim.api.nvim_create_augroup("AutoSave", {
  clear = true,
})

vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
  callback = function()
    save()
  end,
  pattern = "*",
  group = "AutoSave",
})
