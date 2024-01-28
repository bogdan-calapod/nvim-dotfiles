-- Extra language server protocol options

return {
  { -- Bulb in gutter for code actions
    'kosayoda/nvim-lightbulb',
    config = function()
      require('nvim-lightbulb').setup({
        autocmd = { enabled = true },
        number = { enabled = true }
      })
    end,
  },
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
        "bash-language-server",
        "prettierd",
        "css-lsp",
        "pyright",
        "autopep8",
        "shellcheck"
      },
    },
  },
  {
    url = "https://gitlab.com/schrieveslaach/sonarlint.nvim",
    ft = { "python", "typescript", "typescriptreact", "typescript.tsx" },
    dependencies = {
      "mfussenegger/nvim-jdtls",
      "williamboman/mason.nvim",
    },
    config = function()
      require("sonarlint").setup({
        server = {
          cmd = {
            "sonarlint-language-server",
            -- Ensure that sonarlint-language-server uses stdio channel
            "-stdio",
            "-analyzers",
            -- paths to the analyzers you need, using those for python and java in this example
            vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarpython.jar"),
            vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarjs.jar"),
          },
        },
        filetypes = {
          "python",
          "typescript",
          "typescriptreact",
          "typescript.tsx",
        },
      })
    end,
  },
}
