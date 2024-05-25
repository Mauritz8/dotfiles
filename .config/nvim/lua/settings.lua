-- set leader key to space
vim.g.mapleader = " "

-- show line numbers
vim.opt.nu = true
-- use relative line numbers
vim.opt.relativenumber = true

-- use 2 space indent
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
-- automatically indent
vim.opt.smartindent = true

-- don't wrap text on long lines
vim.opt.wrap = false

-- make search case insensitive
vim.opt.ignorecase = true
-- make search case sensitive if it contains upper case characters
vim.opt.smartcase = true

-- make colors good
vim.opt.termguicolors = true

-- always show atleast 8 lines above and below the cursor while scrolling
vim.opt.scrolloff = 8

-- show a vertical line at width 80
-- so you don't make lines to long, or do to much nesting
vim.opt.colorcolumn = "80"

-- store undo history even after quitting vim
vim.opt.undofile = true
