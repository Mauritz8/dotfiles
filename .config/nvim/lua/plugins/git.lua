return {
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  },
  {
    'sindrets/diffview.nvim',
    config = function()
      vim.keymap.set('n', '<leader>g', vim.cmd.DiffviewOpen)
    end
  },
}
