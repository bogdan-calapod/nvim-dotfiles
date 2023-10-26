-- Extra language server protocol options

return {
  {
    "dgagn/diagflow.nvim",
    opts = { scope = "line" },
  },
  {
    "ThePrimeagen/refactoring.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("refactoring").setup()
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji" },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "emoji" } }))
    end,
  },
  -- {
  --   "pmizio/typescript-tools.nvim",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "neovim/nvim-lspconfig",
  --   },
  --   opts = {
  --     expose_as_code_action = { 'fix_all', 'add_missing_imports', 'remove_unused' }
  --   }
  -- },
  {
    "Wansmer/treesj",
    keys = {
      "<space>m",
    },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("treesj").setup({})
    end,
  },
  {
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
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "prettierd",
        "ruff-lsp",
        "css-lsp",
        "pyright",
        "autopep8",
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
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        cssls = {},
        pyright = {
          settings = {
            python = {
              analysis = {
                autoImportCompletions = true,
                autoSearchPaths = true,
                useLibraryCodeForTypes = false,
                diagnosticMode = "openFilesOnly",
              },
            },
          },
        },
      },
    },
  },
}
