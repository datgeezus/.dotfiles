local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug 'nvim-lua/plenary.nvim'
Plug 'airblade/vim-gitgutter'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'sainnhe/gruvbox-material'
Plug('EdenEast/nightfox.nvim', {tag = 'v1.0.0'})
Plug('nvim-treesitter/nvim-treesitter', {['do'] = vim.fn[':TSUpdate']})
Plug 'nvim-telescope/telescope.nvim'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'norcalli/nvim-colorizer.lua'

vim.call('plug#end')
