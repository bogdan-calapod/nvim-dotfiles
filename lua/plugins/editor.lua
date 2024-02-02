return {
  {
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
  {
    'lukas-reineke/virt-column.nvim',
    opts = {
      char = '▎',
      highlight = 'CursorLineSign',
      virtcolumn = '80,120'
    }
  { -- Auto save on focus lose
    'tmillr/sos.nvim',
    lazy = false,
    config = function()
      require('sos').setup()
    end
  }
}
