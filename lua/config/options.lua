-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Set editable background to transparent
-- vim.api.nvim_set_hl(0, "OctoEditable", { bold = true, bg = "None" })

-- Ensure black respects string normalization
vim.g.black_skip_string_normalization = 1

-- Enable spell check by default
vim.api.nvim_set_option("spell", true)
-- Set spelloptions type to camel
vim.api.nvim_set_option("spelloptions", "camel")

-- WSL2 Clipboard Sync
-- TODO: Find some way to auto-install `win32yank.exe` in the correct path
if os.getenv('WSLENV') ~= nil then
  vim.g.clipboard = {
    name = "win32yank",
    copy = {
      ["+"] = { "/home/" .. os.getenv('USER') .. "/.local/bin/win32yank.exe", "-i", "--crlf" },
      ["*"] = { "/home/" .. os.getenv('USER') .. "/.local/bin/win32yank.exe", "-i", "--crlf" },
    },
    paste = {
      ["+"] = { "/home/" .. os.getenv('USER') .. "/.local/bin/win32yank.exe", "-o", "--lf" },
      ["*"] = { "/home/" .. os.getenv('USER') .. "/.local/bin/win32yank.exe", "-o", "--lf" },
    },
  }
else
  vim.g.clipboard = {
    name = "unnamedplus",
  }
end
