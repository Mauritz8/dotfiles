return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
      require('telescope').setup({
        defaults = {
          path_display = { "truncate" },
        },
      })
      local builtin = require('telescope.builtin')

      -- find file in project
      vim.keymap.set('n', '<leader>pf', builtin.git_files)
      -- search in project
      vim.keymap.set('n', '<leader>ps', builtin.live_grep)
      -- search word under cursor
      vim.keymap.set({'n', 'v'}, '<leader>*', builtin.grep_string)
    end
  },

  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
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
  }
}
