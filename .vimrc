" Space as leader
let mapleader = "\<Space>"

" Plugs
call plug#begin('~/.vim/plugged')
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'airblade/vim-gitgutter'
Plug 'plasticboy/vim-markdown'
call plug#end()

" Normal mappings
nmap <leader>vr :sp $MYVIMRC<cr>
nmap <leader>so :source $MYVIMRC<cr>

" Insert mappings
imap jk <esc>
imap kj <esc>
imap <C-s> <esc>:w<cr>

" Set
set encoding=utf-8
set number
set scrolloff=4
set tabstop=4
set autoindent
"set ruler
"set wrap
"set cc=80
syntax on
