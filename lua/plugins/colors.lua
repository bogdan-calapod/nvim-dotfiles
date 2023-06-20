--- Plugin for CSS Colors
return {
  { "brenoprata10/nvim-highlight-colors" },
  {
    "tomasiser/vim-code-dark",
    config = function()
      vim.g.codedark_transparent = 1
      vim.g.codedark_italics = 1
      vim.g.codedark_modern = 1
    end,
  },
  {
    "ray-x/aurora",
    config = function()
      vim.g.aurora_italic = 1
      vim.g.aurora_transparent = 1
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
