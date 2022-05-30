local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug 'nvim-lua/plenary.nvim'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'
Plug 'nvim-lualine/lualine.nvim'
-- Plug 'itchyny/lightline.vim'
-- Plug 'scrooloose/syntastic'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
-- Plug 'sheerun/vim-polyglot'
-- Plug('junegunn/fzf', {['do'] = vim.fn['fzf#install']})
-- Plug 'junegunn/fzf.vim'
Plug 'sainnhe/gruvbox-material'
Plug('EdenEast/nightfox.nvim', {tag = 'v1.0.0'})
Plug('nvim-treesitter/nvim-treesitter', {['do'] = vim.fn[':TSUpdate']})
Plug 'nvim-telescope/telescope.nvim'

vim.call('plug#end')
