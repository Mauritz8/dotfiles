return {
    {
      'rebelot/kanagawa.nvim',
        config = function()
            vim.cmd.colorscheme("kanagawa-dragon")
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

    {
      dir = '/home/mauritz/code/gitstatus.nvim',
      config = function()
        vim.keymap.set('n', '<leader>gs', vim.cmd.Gitstatus)
      end
    },
}
