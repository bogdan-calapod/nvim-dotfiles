return {
  {
    "lewis6991/gitsigns.nvim",
    opts = { current_line_blame = true },
  },
  {
    "junkblocker/git-time-lapse",
    lazy = false,
  },
  {
    "pwntester/octo.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("octo").setup({
        use_local_fs = true,
        enable_builtin = true,
      })
    end,
  },
  {
    "topaxi/gh-actions.nvim",
    cmd = "GhActions",
    keys = {
      { "<leader>gha", "<cmd>GhActions<CR>", desc = "Open GH Actions" },
    },
    build = "make",
    dependencies = { "nvim-lua/plenary.nvim", "MunifTanjim/nui.nvim" },
    opts = {},
    config = function(_, opts)
      require("gh-actions").setup(opts)
    end,
  },
  {
    "ldelossa/gh.nvim",
    lazy = false,
    dependencies = { { "ldelossa/litee.nvim" } },
    config = function()
      require("litee.lib").setup({})
      require("litee.gh").setup({
        -- remap the arrow keys to resize any litee.nvim windows.
        map_resize_keys = false,
        -- do not map any keys inside any gh.nvim buffers.
        disable_keymaps = false,
        -- the icon set to use.
        icon_set = "default",
        -- any custom icons to use.
        icon_set_custom = nil,
        -- whether to register the @username and #issue_number omnifunc completion
        -- in buffers which start with .git/
        git_buffer_completion = true,
        -- defines keymaps in gh.nvim buffers.
        keymaps = {
          -- when inside a gh.nvim panel, this key will open a node if it has
          -- any futher functionality. for example, hitting <CR> on a commit node
          -- will open the commit's changed files in a new gh.nvim panel.
          open = "<CR>",
          -- when inside a gh.nvim panel, expand a collapsed node
          expand = "zo",
          -- when inside a gh.nvim panel, collpased and expanded node
          collapse = "zc",
          -- when cursor is over a "#1234" formatted issue or PR, open its details
          -- and comments in a new tab.
          goto_issue = "gd",
          -- show any details about a node, typically, this reveals commit messages
          -- and submitted review bodys.
          details = "d",
          -- inside a convo buffer, submit a comment
          submit_comment = "<C-s>",
          -- inside a convo buffer, when your cursor is ontop of a comment, open
          -- up a set of actions that can be performed.
          actions = "<C-a>",
          -- inside a thread convo buffer, resolve the thread.
          resolve_thread = "<C-r>",
          -- inside a gh.nvim panel, if possible, open the node's web URL in your
          -- browser. useful particularily for digging into external failed CI
          -- checks.
          goto_web = "gx",
        },
      })
    end,
  },
}
