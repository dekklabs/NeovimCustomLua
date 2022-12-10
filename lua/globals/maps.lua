-- define Mpaleader
vim.g.mapleader = ' '

local keymap = vim.api.nvim_set_keymap

keymap('n', '<leader>w', '<Esc>:w<CR>', {})
keymap('n', '<leader>q', '<Esc>:q<CR>', {})
keymap('n', '<leader>n', '<Esc>:noh<CR>', {})

-- NERDTREE
keymap('n', '<c-n>', '<Esc>:NERDTree<CR>', {})
keymap('n', '<c-b>', '<Esc>:NERDTreeClose<CR>', {})
keymap('n', '<c-s>', '<Esc>:NERDTreeFind<CR>', {})

-- Navigating
keymap('n', '<c-h>', '<Esc>:tabprevious<CR>', {})
keymap('n', '<c-l>', '<Esc>:tabnext<CR>', {})

-- FZF
-- keymap('n', '<c-f>', '<Esc>:FZF<CR>', {})

-- LSP

-- Telescope
--keymap('n', '<c-f>', '<Esc>:Telescope<CR>', {})
