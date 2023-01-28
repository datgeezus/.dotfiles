local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug('nvim-treesitter/nvim-treesitter', {['do'] = vim.fn[':TSUpdate']})
Plug 'nvim-telescope/telescope.nvim'
Plug 'norcalli/nvim-colorizer.lua'
-- LSP
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
-- Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'onsails/lspkind-nvim'
-- Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'
Plug 'VonHeikemen/lsp-zero.nvim'
-- Misc
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'folke/lsp-colors.nvim'
Plug 'folke/trouble.nvim'
Plug 'David-Kunz/markid'
-- colorschemes
-- Plug 'sainnhe/gruvbox-material'
-- Plug 'navarasu/onedark.nvim'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'cocopon/iceberg.vim'
Plug 'rebelot/kanagawa.nvim'
Plug 'ntk148v/vim-horizon'
Plug('catppuccin/nvim', {as = 'catppuccin'})
Plug('EdenEast/nightfox.nvim', {tag = 'v1.0.0'})
Plug 'olivercederborg/poimandres.nvim'
Plug 'Vimjas/vim-python-pep8-indent'

vim.call('plug#end')
