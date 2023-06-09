-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Run black % on save on python files
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "*.py" },
  command = "!autopep8 --in-place --aggressive --aggressive %",
})
