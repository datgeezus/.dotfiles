local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug 'airblade/vim-gitgutter'
Plug 'sainnhe/gruvbox-material'
Plug 'Yggdroot/indentLine'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'sheerun/vim-polyglot'
-- Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug('junegunn/fzf', {['do'] = vim.fn['fzf#install']})
Plug 'junegunn/fzf.vim'
Plug('EdenEast/nightfox.nvim', {tag = 'v1.0.0'})
--Plug 'neoclide/coc.nvim', {'branch': 'release'}

vim.call('plug#end')
