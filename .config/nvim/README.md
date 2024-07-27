# Nvim

This is an amalgamation of [LilStrudel](https://github.com/Lil-Strudel/.dotfiles)and [ThePrimeagen's](https://www.youtube.com/watch?v=w7i4amO_zaE&t=814s) neovim config.

## Plugins

- [Lazy](https://github.com/folke/lazy.nvim)
- [Lsp](https://github.com/VonHeikemen/lsp-zero.nvim)
- [Lualine](https://github.com/nvim-lualine/lualine.nvim)
- [Oil](https://github.com/stevearc/oil.nvim)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [Tokyo-Night](https://github.com/folke/tokyonight.nvim)
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [Vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)

## Remaps
``` lua
-- Open netrw, currently using oil by default
--vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- Prime's keymaps for moving highlighted text up and down 
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Prime's keymaps to keep cursor in the middle while half page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u", "<C-u>zz")

-- Prime's keymaps to keep cursor in the middle while inc searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Prime's kemap to paste over highlight, sends overwritten highlight to void register
vim.keymap.set("x", "<leader>p", "\"_dp")

-- Prime's keymap to delete to void register
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")
```

## Vim opts
``` lua
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
```