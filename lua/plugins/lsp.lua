-- Extra language server protocol options

return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji" },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "emoji" } }))
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    --   dependencies = { "nvim-treesitter/nvim-treesitter-angular" },
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        -- "python",
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
        "ruff-lsp",
        -- "python-lsp-server",
        -- "pyright",
        "autopep8",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- PyLSP config
      require("lspconfig").pylsp.setup({
        settings = {
          jedi_completion = {
            include_class_objects = true,
            include_function_objects = true,
            fuzzy = true,
            eager = true,
          },
          pylsp = {
            plugins = {
              pycodestyle = {
                enabled = false,
              },
            },
          },
        },
      })
    end,
  },
}
