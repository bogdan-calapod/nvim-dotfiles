return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      style = "night",
      styles = {
        -- sidebars = "transparent",
        floats = "transparent",
        comments = { italic = true },
        keywords = { italic = true },
      },
      on_highlights = function(hl, colors)
        hl.LineNr = { bg = "none", fg = "#999999" }
        hl.CursorLineNr = { fg = "#ffffff" }
      end,
    },
  },
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     -- colorscheme = "tokyonight",
  --   },
  -- },
}
