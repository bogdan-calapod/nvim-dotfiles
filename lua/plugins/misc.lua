return {
  { -- package.json info
    "vuki656/package-info.nvim",
    config = function()
      require("package-info").setup()
    end,
  },
  {
    "mcauley-penney/visual-whitespace.nvim",
    config = true,
  },
}
