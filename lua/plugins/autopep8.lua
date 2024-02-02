return { -- Use autopep8 for python format
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      python = { "autopep8" }
    }
  }
}
