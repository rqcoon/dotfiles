" Space as leader
let mapleader = "<Space>"

" don't use arrowkeys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" really, just don't
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>

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
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
call plug#end()

let g:airline#extensions#ale#enabled = 1

" Normal mappings
nmap <leader>vr :sp $MYVIMRC<cr>
nmap <leader>so :source $MYVIMRC<cr>
nmap <C-P> :Files<CR>
nmap <C-s> <esc>:w<cr>

" Insert mappings
imap jk <esc>
imap kj <esc>
imap <C-s> <esc>:w<cr>

" Set
set expandtab
set smarttab
set encoding=utf-8
set number
set scrolloff=4
set tabstop=4
set autoindent
"set ruler
"set wrap
"set cc=80
syntax on
set termguicolors
let g:gruvbox_italic=1

colorscheme gruvbox
