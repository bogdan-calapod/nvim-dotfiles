return {
  { -- Configure flash to zip through results easier
    "folke/flash.nvim",
    opts = {
      modes = {
        search = {
          enabled = false
        },
        label = {
          rainbow = true,
        },
        char = {
          jump_labels = false,
          autohide = true,
        }
      }
    }
  },
  { -- Add indent indicators
    'lukas-reineke/virt-column.nvim',
    opts = {
      char = '▎',
      highlight = 'CursorLineSign',
      virtcolumn = '80,120'
    }
  },
  { -- Auto save on focus lose
    'tmillr/sos.nvim',
    lazy = false,
    config = function()
      require('sos').setup()
    end
  },
  {
    "folke/zen-mode.nvim",
    opts = {
      window = {
        options = {
          relativenumber = true,
        },
      },
    }
  }
}
