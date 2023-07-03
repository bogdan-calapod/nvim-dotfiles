return {
  {
    "navarasu/onedark.nvim",
    lazy = true,
    opts = {
      style = "darker",
      transparent = true,
      lualine = {
        transparent = true
      }
    }
  },
  { "ellisonleao/gruvbox.nvim", opts = { transparent_mode = true } },
  {
    "EdenEast/nightfox.nvim",
    opts = {
      options = {
        transparent = true,
        terminal_colors = true,
      }
    }
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    }
  },
}
