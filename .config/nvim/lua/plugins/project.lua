return {
  {
    'nvim-telescope/telescope.nvim',
    config = function()
      require('telescope').setup({
        defaults = {
          path_display = { "truncate" },
        },
      })
      local builtin = require('telescope.builtin')

      vim.keymap.set('n', '<leader>pf', builtin.git_files, {
        desc = "find file in project",
      })
      vim.keymap.set('n', '<leader>ps', builtin.live_grep, {
        desc = "search in project",
      })
      vim.keymap.set({'n', 'v'}, '<leader>*', builtin.grep_string, {
        desc = "search word under cursor",
      })
    end
  },

  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    config = function()
      local harpoon = require("harpoon")
      harpoon.setup()

      vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
      vim.keymap.set("n", "<leader>e", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

      vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
      vim.keymap.set("n", "<C-l>", function() harpoon:list():select(2) end)
      vim.keymap.set("n", "<C-p>", function() harpoon:list():select(3) end)
      vim.keymap.set("n", "<C-n>", function() harpoon:list():select(4) end)
    end
  },

  { "nvim-lua/plenary.nvim", lazy = true },
}
