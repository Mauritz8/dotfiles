return {
  {
    'projekt0n/github-nvim-theme',
    config = function()
      vim.cmd.colorscheme('github_dark_default')
    end
  },

  {
    'mbbill/undotree',
    config = function()
      vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
    end
  },

  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require("nvim-treesitter.configs").setup({
        auto_install = true,
        highlight = { enable = true }
      })
    end
  },

  { 'nvim-tree/nvim-web-devicons' },

  {
    'Saghen/blink.cmp',
    version = '1.*',
    opts = {
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },
    },
  }
}
