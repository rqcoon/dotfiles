" -------------------------------------- PLUGINS
call plug#begin('~/.vim/plugged')

" basics
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'

" visual
Plug 'cocopon/iceberg.vim'
Plug 'itchyny/lightline.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'airblade/vim-gitgutter'
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'

" markdown
Plug 'plasticboy/vim-markdown'
Plug 'vimwiki/vimwiki'

" files
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" misc
Plug 'itchyny/calendar.vim'
call plug#end()

" vimwiki markdown
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

" lightline settings
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'

let g:gruvbox_italic=1

" -------------------------------------- SETTINGS

set nocompatible
filetype plugin indent on
set encoding=utf-8
syntax on

" file
set autowrite
set noswapfile

" clipboard
set clipboard+=unnamedplus

" search
set ignorecase
set smartcase

" spell
set spelllang=en_us
syntax spell toplevel

" open new splits below and on the right
set splitbelow
set splitright

" visual
set noshowmode
set relativenumber
set ruler
set cc=80

" show existing tab with 4 spaces width
set tabstop=4

" when indenting with '>', use 4 spaces width
set shiftwidth=4

" on pressing tab, insert 4 spaces
set expandtab
set scrolloff=4

set autoindent
set wrap

" theme
set background=dark
colorscheme gruvbox
set termguicolors


" ------------------------------------- MAPPINGS

" space as leader
let mapleader = "\<Space>"

" don't use arrowkeys
nmap <Up> <NOP>
nmap <Down> <NOP>
nmap <Left> <NOP>
nmap <Right> <NOP>

" really, just don't
imap <Up> <NOP>
imap <Down> <NOP>
imap <Left> <NOP>
imap <Right> <NOP>

" disable Ex mode
nmap Q nop

" trim trailing whitespace
nmap <leader>q :%s/\s\+$//<CR>:noh<CR>

" change/source config
nmap <leader>vr :sp $MYVIMRC<cr>
nmap <leader>so :source $MYVIMRC<cr>

" files
nmap <C-P> :Files<CR>

" quick exit and save
imap jk <esc>
imap kj <esc>
imap <C-s> <esc>:w<cr>
nmap <C-s> <esc>:w<cr>

" easy split navigation
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
nmap <C-H> <C-W><C-H>
