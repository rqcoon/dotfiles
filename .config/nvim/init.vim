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
" Plug 'morhetz/gruvbox'
Plug 'romainl/Apprentice'
Plug 'junegunn/goyo.vim'
"Plug 'Yggdroot/indentLine'

" markdown
" Plug 'plasticboy/vim-markdown'
Plug 'gabrielelana/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'masukomi/vim-markdown-folding'

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
call plug#end()

" -------------------------------------- SETTINGS

filetype plugin indent on       " no idea
set termguicolors               " use true colors for colorscheme
set background=dark             " Use dark scheme
colorscheme apprentice          " Set colorscheme
set encoding=utf8               " Set UTF-8 encoding
set autoread                    " Reload files changed outside vim
set backspace=indent,eol,start  " Allow backspace in insert mode
set relativenumber              " Line numbers are good
set ttyfast                     " Faster term redrawing, scrolling; perhaps
set nobackup                    " Disable file backups when writing files
set nowritebackup               " Don't backup before overwriting files
set expandtab                   " Use the appropriate number of spaces to tab
set smarttab                    " A tab in front of a line inserts spaces
set shiftwidth=4                " # of spaces to use for autoindent
set tabstop=4                   " # of spaces that a tab counts for
set textwidth=80                " Make all lines 80 chars or less
set wrap                        " Wrap lines longer than 80 chars
set linebreak                   " Wrap lines when convenient
set nojoinspaces                " Set 1 space btwn lines/periods to be joined
set scrolloff=999               " Working line will always be in the center
set title                       " Set title of the Vim window
set titleold=                   " Revert to original title when exiting
set hlsearch                    " Highlight searches by default
set noshowmode                  " Don't show current mode [bc Lightline]
set noshowcmd                   " Don't show incomplete cmds [bc Lightline]
set laststatus=2                " Always show status bar
set autoindent                  " Use existing indent depth starting a new line
set ttimeoutlen=1               " Exit insert/visual mode without ESC delay
" set digraph                     " Support special characters, eg German umlaut
set undodir=$HOME/.vim/undodir  " Set persistent undodir path
set undofile                    " Write changes to the undofile
set undolevels=1000             " Max # of changes that can be undone
set undoreload=10000            " Max # of lines to save for undo on buf reload
set directory=$HOME/.vim/swp//  " Write swap files in one directory, unique nms
set splitright                  " Splitting will put the new window right
set splitbelow                  " Splitting will put the new window below


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

" disabling plasticboy's folding to use other plugin properly
let g:vim_markdown_folding_disabled = 1

" enable plasticboy's markdown frontmatter
let g:vim_markdown_frontmatter = 1

" allow following markdown links without the .md extension
let g:vim_markdown_no_extensions_in_markdown = 1

" autosave file when following markdown links
let g:vim_markdown_autowrite = 1

" open markdown links in tabs
let g:vim_markdown_edit_url_in = 'tab'

let g:markdown_include_jekyll_support = 0
let g:markdown_mapping_switch_status = '<leader>t'   
let g:markdown_enable_spell_checking = 0

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
"nmap tn :tabnew<Space>
"nmap tk :tabnext<CR>
"nmap th :tabfirst<CR>
"nmap tl :tablast<CR>
"nmap <Tab> gt
"nmap <S-Tab> gT
"nmap <silent> <S-t> :tabnew<CR>

" press Tab to fold a markdown heading
nnoremap <Tab> za
