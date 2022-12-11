-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'scrooloose/NERDTree'
  use 'morhetz/gruvbox'
  use 'shinchu/lightline-gruvbox.vim'
  use 'natebosch/vim-lsc'
  use 'airblade/vim-rooter'
  use 'voldikss/vim-floaterm'
  use 'scrooloose/nerdcommenter'
  -- Icons languages
  use 'ryanoasis/vim-devicons'
  -- Git branch
  use 'itchyny/vim-gitbranch'
  -- Color hightlight CSS
  use 'lilydjwg/colorizer'
  -- Color green files and icons
  use 'tiagofumo/vim-nerdtree-syntax-highlight'
  -- Git lens
  use 'APZelos/blamer.nvim'
  -- Vim spector
  use 'puremourning/vimspector'
  -- Show line delete
  use 'mhinz/vim-signify'
  -- Line in code
  use 'yggdroot/indentline'
  -- JSX
  use 'rhysd/git-messenger.vim'
  use 'pangloss/vim-javascript'
  use 'mxw/vim-jsx'

  -- FZF
  use { "junegunn/fzf", run = ":call fzf#install()" }

  use 'terroo/vim-simple-emoji'
  use 'navarasu/onedark.nvim'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} } 
  }

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-compe'

  -- Mason
  use "williamboman/mason.nvim"

  -- Autopairs
  use {
    "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }

  -- github copilot
  use 'github/copilot.vim'

  -- Tree Lua
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  --use 'vim-airline/vim-airline'
  --use 'vim-airline/vim-airline-themes'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Autocomplete cmd
  use {
    'hrsh7th/nvim-cmp',
    requires = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
  }

  -- Identation
  use 'lukas-reineke/indent-blankline.nvim' -- Add indentation guides even on blank lines

  use 'tpope/vim-sleuth'

  use { 'alvarosevilla95/luatab.nvim', requires='kyazdani42/nvim-web-devicons' }

  use 'mhinz/vim-startify'

  -- Dashboard
  use 'glepnir/dashboard-nvim'

  use 'mattn/emmet-vim'

end)
