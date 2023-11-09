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
      on_highlights = function(hl, colors)
        hl.LineNr = { bg = "none", fg = "#999999" }
        hl.CursorLineNr = { fg = "#ffffff" }
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
