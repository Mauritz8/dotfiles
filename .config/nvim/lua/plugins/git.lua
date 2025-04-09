return {
  { 'lewis6991/gitsigns.nvim', opts = {} },
  {
    'sindrets/diffview.nvim',
    config = function()
      vim.keymap.set('n', '<leader>g', vim.cmd.DiffviewOpen)
    end
  },
}
