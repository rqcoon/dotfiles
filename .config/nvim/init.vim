" -------------------------------------- PLUGINS
call plug#begin('~/.vim/plugged')

" basics
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'

" visual
Plug 'itchyny/lightline.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'airblade/vim-gitgutter'
Plug 'romainl/Apprentice'
Plug 'junegunn/goyo.vim'

" markdown
Plug 'plasticboy/vim-markdown'
"Plug 'gabrielelana/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'masukomi/vim-markdown-folding'

" syntax
Plug 'mboughaba/i3config.vim'

" autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" linting
Plug 'w0rp/ale'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" files
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
call plug#end()

" -------------------------------------- SETTINGS

filetype plugin indent on       " no idea
syntax on
runtime macros/matchit.vim      " hit '%' on if to jump to else

" various
set encoding=utf8               " Set UTF-8 encoding
set autoindent                  " Minimal automatic indenting for any filetype
set backspace=indent,eol,start  " Proper backspace behavior
set hidden                      " Possibility to have more than one unsaved buffers
set autoread                    " Reload files changed outside vim
set incsearch                   " Incremental search, hit CR to stop
set ruler                       " Shows the current line number at the bottom-right of the screen
set wildmenu                    " Great command-line completion, use `<Tab>` to move aet wraound and CR to validate
set wildignore+=*.jpg,*.jpeg,*.png,*.gif,*.o,.git,tmp,node_modules,*.pyc
set backspace=indent,eol,start  " Allow backspace in insert mode
set noshowmode                  " Don't show current mode [bc Lightline]
set ttimeoutlen=1               " Exit insert/visual mode without ESC delay
set inccommand=split            " Highlight search results and show in preview split

" theme
set termguicolors               " Use true colors for colorscheme
set background=dark             " Use dark scheme
colorscheme apprentice          " Set colorscheme

" tabs
set expandtab                   " Use the appropriate number of spaces to tab
set smarttab                    " A tab in front of a line inserts spaces
set shiftwidth=4                " # of spaces to use for autoindent
set tabstop=4                   " # of spaces that a tab counts for

" lines and numbers
set relativenumber              " Line numbers are good
set numberwidth=6               " Wider linenumbers
set cursorline                  " Show line

" splits
set splitright                  " Splitting will put the new window right
set splitbelow                  " Splitting will put the new window below

" clipboard
set clipboard+=unnamedplus      " Always use system clipboard

" columns
set textwidth=79                " Make all lines 80 chars or less
set colorcolumn=80
set wrap                        " Wrap lines longer than 80 chars
set linebreak                   " Wrap lines when convenient
set nojoinspaces                " Set 1 space btwn lines/periods to be joined

" scrolling
set scrolloff=999               " Working line will always be in the center

" undo
set undodir=$HOME/.vim/undodir  " Set persistent undodir path
set undofile                    " Write changes to the undofile
set undolevels=1000             " Max # of changes that can be undone
set undoreload=10000            " Max # of lines to save for undo on buf reload
set directory=$HOME/.vim/swp//  " Write swap files in one directory, unique nms

" -------------------------------------- PLUGIN SETTINGS

let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"

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

" run prettier on save
" let g:prettier#autoformat = 0
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" disabling plasticboy's folding to use other plugin properly
let g:vim_markdown_folding_disabled = 1

" enable plasticboy's markdown frontmatter
let g:vim_markdown_frontmatter = 1

" allow following markdown links without the .md extension
let g:vim_markdown_no_extensions_in_markdown = 1

" autosave file when following markdown links
let g:vim_markdown_autowrite = 1

" open markdown links in tabs
let g:vim_markdown_edit_url_in = 'split'

let g:markdown_include_jekyll_support = 0
let g:markdown_mapping_switch_status = '<leader>t'
let g:markdown_enable_spell_checking = 0

" ------------------------------------- MAPPINGS

" space as leader
let mapleader = "\<space>"
let maplocalleader = ','

" use arrows to resize panes in normal mode
nnoremap <Left> :vertical resize -1<CR>
nnoremap <Right> :vertical resize +1<CR>
nnoremap <Up> :resize -1<CR>
nnoremap <Down> :resize +1<CR>

" don't use arrowkeys
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

" motion across wrapped lines
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" disable Ex mode
nnoremap Q nop

" trim trailing whitespace
nnoremap <leader>q :%s/\s\+$//<CR>:noh<CR>

" change/source config
nnoremap <leader>vr :sp $MYVIMRC<cr>
nnoremap <leader>so :source $MYVIMRC<cr>

" files
nnoremap <C-P> :Files<CR>

" quick exit and save
inoremap jk <esc>
inoremap kj <esc>
inoremap <C-s> <esc>:w<cr>
nnoremap <C-s> <esc>:w<cr>

" split faster
nnoremap <Leader>h :split<CR>
nnoremap <Leader>v :vsplit<CR>

" easy split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" tabs
"nnoremap tn :tabnew<Space>
"nnoremap tk :tabnext<CR>
"nnoremap th :tabfirst<CR>
"nnoremap tl :tablast<CR>
"nnoremap <Tab> gt
"nnoremap <S-Tab> gT
"nnoremap <silent> <S-t> :tabnew<CR>

" press Tab to fold a markdown heading
nnoremap <Tab> za

" quick date insert
nnoremap <F5> "=strftime("%F")<CR>P
inoremap <F5> <C-R>=strftime("%F")<CR>
