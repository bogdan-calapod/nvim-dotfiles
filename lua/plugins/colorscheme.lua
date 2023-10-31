return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      -- -- Disable transparent floats because it borks Octo - should be fixed soon-ish based on Octo's commit history
      styles = {
        sidebars = "transparent",
        -- floats = "transparent",
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
