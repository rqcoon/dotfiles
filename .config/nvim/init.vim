" -------------------------------------- PLUGINS
call plug#begin('~/.vim/plugged')

" basics
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'

" visual
Plug 'cocopon/iceberg.vim'
Plug 'itchyny/lightline.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'airblade/vim-gitgutter'
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'junegunn/goyo.vim'
Plug 'Yggdroot/indentLine'

" markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

" syntax
Plug 'mboughaba/i3config.vim'

" autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" lintings
Plug 'w0rp/ale'

" files
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" misc
Plug 'itchyny/calendar.vim'
call plug#end()

" -------------------------------------- PLUGIN SETTINGS

" fzf {{{
" set wildmode=list:longest,list:full
" set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
" let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"
" " }}}

" markdown
let g:vim_markdown_folding_disabled = 1
set conceallevel=2

" lightline
"let g:lightline = {}
"let g:lightline.colorscheme = 'gruvbox'
let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }
let g:gruvbox_italic=1

" -------------------------------------- SETTINGS

set nocompatible
filetype plugin indent on
set encoding=utf-8

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

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Use one space, not two, after punctuation.
set nojoinspaces

set autoindent
set wrap
set textwidth=80
au BufRead,BufNewFile *.md setlocal textwidth=80 " apply wrapping to md files

" theme
colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark='medium'
set termguicolors
syntax on

filetype plugin indent on

" highlight whitespaces
set list
set listchars=""
set listchars+=tab:>-
set listchars+=trail:•
set listchars+=nbsp:•


" ------------------------------------- MAPPINGS

" space as leader
let mapleader = "\<space>"
let maplocalleader = ','

" use arrows to resize panes in normal mode
nmap <Left> :vertical resize -1<CR>
nmap <Right> :vertical resize +1<CR>
nmap <Up> :resize -1<CR>
nmap <Down> :resize +1<CR>

" don't use arrowkeys
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

" split faster
nmap <Leader>h :split<CR>
nmap <Leader>v :vsplit<CR>

" easy split navigation
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
nmap <C-H> <C-W><C-H>

" tabs
nmap tn :tabnew<Space>
nmap tk :tabnext<CR>
nmap th :tabfirst<CR>
nmap tl :tablast<CR>
nmap <Tab> gt
nmap <S-Tab> gT
nmap <silent> <S-t> :tabnew<CR>
