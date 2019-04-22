set nocompatible
filetype plugin on
syntax on

" Space as leader
let mapleader = "\<Space>"

" don't use arrowkeys
" noremap <Up> <NOP>
" noremap <Down> <NOP>
" noremap <Left> <NOP>
" noremap <Right> <NOP>

" really, just don't
" inoremap <Up>    <NOP>
" inoremap <Down>  <NOP>
" inoremap <Left>  <NOP>
" inoremap <Right> <NOP>

" Plugs
call plug#begin('~/.vim/plugged')
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'plasticboy/vim-markdown'
Plug 'machakann/vim-highlightedyank'
Plug 'vimwiki/vimwiki'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
call plug#end()

let g:deoplete#enable_at_startup = 1

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
set wrap
set cc=80
syntax on
set termguicolors
let g:gruvbox_italic=1

colorscheme gruvbox
