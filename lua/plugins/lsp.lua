-- Extra language server protocol options

return {
  { -- Bulb in gutter for code actions
    "kosayoda/nvim-lightbulb",
    config = function()
      require("nvim-lightbulb").setup({
        autocmd = { enabled = true },
        number = { enabled = true },
      })
    end,
  },
  { -- LSP Diagnostics in top right
    "dgagn/diagflow.nvim",
    opts = { scope = "line" },
  },
  {
    "chrisbra/csv.vim",
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
  -- { -- Mason config
  --   "williamboman/mason.nvim",
  --   opts = {
  --     ui = { border = "rounded" },
  --     ensure_installed = {
  --       "bash-language-server",
  --       "css-lsp",
  --       "ruff-lsp",
  --       "pyright",
  --       "autopep8",
  --       "shellcheck",
  --     },
  --   },
  -- },
  -- {
  --   url = "https://gitlab.com/schrieveslaach/sonarlint.nvim",
  --   ft = { "python", "typescript", "typescriptreact", "typescript.tsx" },
  --   dependencies = {
  --     "mfussenegger/nvim-jdtls",
  --   },
  --   config = function()
  --     require("sonarlint").setup({
  --       server = {
  --         cmd = {
  --           "java",
  --           "-cp",
  --           ".:/Users/bogdan/repos/misc/nvim-dotfiles/sonarlint/*",
  --           "-jar",
  --           "/Users/bogdan/repos/misc/nvim-dotfiles/sonarlint/sonarlint-server.jar",
  --           -- Ensure that sonarlint-language-server uses stdio channel
  --           "-stdio",
  --           "-analyzers",
  --           -- paths to the analyzers you need, using those for python and java in this example
  --           "/Users/bogdan/repos/misc/nvim-dotfiles/sonarlint/sonarpython.jar",
  --           "/Users/bogdan/repos/misc/nvim-dotfiles/sonarlint/sonarjs.jar",
  --           "/Users/bogdan/repos/misc/nvim-dotfiles/sonarlint/sonartext.jar",
  --           "/Users/bogdan/repos/misc/nvim-dotfiles/sonarlint/sonarhtml.jar",
  --         },
  --       },
  --       filetypes = {
  --         "python",
  --         "typescript",
  --         "typescriptreact",
  --         "typescript.tsx",
  --       },
  --     })
  --   end,
  -- },
  {
    "MeanderingProgrammer/markdown.nvim",
    main = "render-markdown",
    opts = {},
    name = "render-markdown", -- Only needed if you have another plugin named markdown.nvim
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
  },
}
