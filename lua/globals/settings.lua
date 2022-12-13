local bo = vim.bo
local o = vim.o
local wo = vim.wo
local cmd = vim.cmd
local g = vim.g
local opt = vim.opt

--
-- Configuration
bo.expandtab        = true
bo.shiftwidth       = 2
bo.softtabstop      = 2
wo.foldenable       = false
o.hidden            = true
o.updatetime        = 250
o.expandtab         = true
bo.expandtab        = true
o.autoindent        = true
bo.autoindent       = true
o.incsearch         = true
o.hlsearch          = true
o.ignorecase        = true
o.smartcase         = true
local opts          = { noremap = true }
wo.number           = true
o.number            = true
wo.relativenumber   = true
o.relativenumber    = true
o.list              = true
o.showtabline       = 2

-- Theme
cmd[[colorscheme gruvbox]]

-- Terminal floating
g["floaterm_keymap_new"]    = '<F7>'
g["floaterm_keymap_prev"]   = '<F8>'
g["floaterm_keymap_next"]   = '<F9>'
g["floaterm_keymap_toggle"] = '<F12>'

opt.listchars = { eol = "↴", tab = "▸ ", trail = "·", extends = "»", precedes = "«" }

-- set
wo.signcolumn = "yes"

cmd([[ set encoding=utf8 ]])
cmd([[ set nu ]])
cmd([[ set wildmenu ]])
cmd([[ set confirm ]])
cmd([[ set incsearch ]])
cmd([[ set title ]])
cmd([[ set t_Co=256 ]])
cmd([[ set shiftwidth=2 ]])
cmd([[ set softtabstop=2 ]])
cmd([[ set expandtab ]])
cmd([[ set shiftwidth=2 ]])
cmd([[ set softtabstop=2 ]])
cmd([[ set expandtab ]])
cmd([[ set cursorline ]])
cmd([[ syntax on ]])

-- Requires
require("mason").setup()
require'lspconfig'.pyright.setup{}
require'lspconfig'.sumneko_lua.setup {}
