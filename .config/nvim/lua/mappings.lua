-- set leader key to space
vim.g.mapleader = " "

-- remap escape key to jk
vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move selected lines up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor in the middle vertically while scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keep cursor in the middle vertically while moving through matching searches
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<C-y>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
