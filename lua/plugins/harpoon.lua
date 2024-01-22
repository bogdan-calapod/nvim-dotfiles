return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  depends = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local harpoon = require("harpoon")

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    vim.keymap.set("n", "<leader>ha", function() harpoon:list():append() end, { desc = "Add current file to harpoon" })
    vim.keymap.set("n", "<leader>hl", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
      { desc = "Open harpoon menu" })

    vim.keymap.set("n", "<leader>h1", function() harpoon:list():select(1) end, { desc = "Select first file" })
    vim.keymap.set("n", "<leader>h2", function() harpoon:list():select(2) end, { desc = "Select second file" })
    vim.keymap.set("n", "<leader>h3", function() harpoon:list():select(3) end, { desc = "Select third file" })
    vim.keymap.set("n", "<leader>h4", function() harpoon:list():select(4) end, { desc = "Select fourth file" })
  end,
}
