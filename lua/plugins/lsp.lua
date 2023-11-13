-- Extra language server protocol options

return {
  { -- LSP Diagnostics in top right
    "dgagn/diagflow.nvim",
    opts = { scope = "line" },
  },
  { -- Merge lines
    "Wansmer/treesj",
    keys = {
      "<space>m",
    },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("treesj").setup({})
    end,
  },
  { -- Treesitter config
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },
  },
  { -- Mason config
    "williamboman/mason.nvim",
    opts = {
      ui = { border = "rounded" },
      ensure_installed = {
        "prettierd",
        "css-lsp",
        "pyright",
      },
    },
  },
}
