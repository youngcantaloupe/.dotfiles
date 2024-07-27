-- Makes space the leader
vim.g.mapleader = " "

-- Makes the cursor a block always
vim.opt.guicursor = "a:block"

-- Enables relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Makes tab width 4 spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Automatically indents
vim.opt.smartindent = true

-- Shows search as you're typing not after
vim.opt.incsearch = true
vim.opt.hlsearch = false-- Shows search as you're typing not after
vim.opt.incsearch = true
vim.opt.hlsearch = false

-- Enables true color support
vim.opt.termguicolors = true

-- Highlights the line the cursor is on
vim.opt.cursorline = true

-- Leaves 8 lines above/below cursor while scrolling
vim.opt.scrolloff = 8

-- Sync clipboard between OS and Neovim
vim.opt.clipboard = 'unnamedplus'
