return {
    {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    },

    {
        'tpope/vim-fugitive',
        config = function()
            -- choose fix when resolving merge conflict
            -- open file containing the merge conflict in a three-way split with the shortcut "dv"
            -- then use either ml for "merge left", or mr for "merge right"
            -- when you're done press dq to close the split 
            vim.keymap.set("n", "<leader>ml", "<cmd>diffget //2<CR>")
            vim.keymap.set("n", "<leader>mr", "<cmd>diffget //3<CR>")
        end
    }
}
