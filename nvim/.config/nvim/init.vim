set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" vim-plug
" let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
" if empty(glob(data_dir . '/autoload/plug.vim))
"     silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
"     autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
" endif

" call plug#begin(data_dir . '/plugins')

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors

colorscheme kanagawa
