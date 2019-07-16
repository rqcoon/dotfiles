" vim:foldmethod=marker:foldlevel=0

" PLUGINS {{{
call plug#begin('~/.vim/plugged')

" basics
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
" Plug 'godlygeek/tabular'

" visual
Plug 'machakann/vim-highlightedyank'
Plug 'airblade/vim-gitgutter'
Plug 'romainl/Apprentice'
Plug 'Yggdroot/indentLine'
Plug 'chriskempson/base16-vim'

" markdown
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

" syntax
Plug 'sheerun/vim-polyglot'
Plug 'dbeniamine/todo.txt-vim'
Plug 'chemzqm/vim-jsx-improve'
Plug 'tmsvg/pear-tree'
Plug 'calviken/vim-gdscript3'

" autocomplete
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'neoclide/coc.nvim', {'do': './install.sh nightly'}

" snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" linting
Plug 'w0rp/ale'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'editorconfig/editorconfig-vim'

" files
Plug 'mhinz/vim-startify'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-startify'

" fzf note taking
Plug 'https://github.com/Alok/notational-fzf-vim'

call plug#end()
" }}}
" PLUGIN SETTINGS {{{

" Markdown {{{
" enable plasticboy's markdown frontmatter
let g:vim_markdown_frontmatter = 1
" allow following markdown links without the .md extension
let g:vim_markdown_no_extensions_in_markdown = 1
" autosave file when following markdown links
let g:vim_markdown_autowrite = 1
" open markdown links in splits
let g:vim_markdown_edit_url_in = 'vsplit'
" fold in python style
let g:vim_markdown_folding_disabled = 1
" let g:vim_markdown_folding_style_pythonic = 1
" }}}
" Goyo {{{
let g:goyo_width = 88
" }}}
" COC {{{

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() :
                                           \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" }}}
" UltiSnips {{{
" let g:UltiSnipsExpandTrigger="<C-e>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" }}}
" Ale {{{
let g:ale_lintes = {
\   'markdown': ['alex']
\}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint', 'prettier'],
\   'json': ['prettier'],
\   'css': ['prettier'],
\   'markdown': ['prettier'],
\}
let g:ale_fix_on_save = 1
" }}}
" FZF {{{
let $FZF_DEFAULT_COMMAND = 'rg --files'
" }}}
" Notational-fzf {{{
let g:nv_search_paths = ['~/Dropbox/Notes']
let g:nv_use_short_pathnames = 1
" }}}

" }}}
" SETTINGS {{{

filetype plugin indent on       " no idea
syntax on
runtime macros/matchit.vim      " hit '%' on if to jump to else

" various
set encoding=utf8               " Set UTF-8 encoding
set backspace=indent,eol,start  " Proper backspace behavior
set hidden                      " Possibility to have more than one unsaved buffers
set autoread                    " Reload files changed outside vim
set incsearch                   " Incremental search, hit CR to stop
set ignorecase                  " Ignore case when searching
set lazyredraw                  " Don't redraw during macros
set ruler                       " Shows the current line number at the bottom-right of the screen
set wildmenu                    " Great command-line completion, use `<Tab>` to move aet wraound and CR to validate
set wildignore+=*.jpg,*.jpeg,*.png,*.gif,*.o,.git,tmp,node_modules,*.pyc
set backspace=indent,eol,start  " Allow backspace in insert mode
set ttimeoutlen=2               " Exit insert/visual mode without ESC delay
set inccommand=split            " Highlight search results and show in preview split
set conceallevel=2              " Conceals markdown syntax

" disable backups and swap
set nobackup
set nowb
set noswapfile

" theme
" set termguicolors               " Use true colors for colorscheme
set background=dark             " Use dark scheme
colorscheme apprentice          " Set colorscheme

" text, tabs and indents
set expandtab                   " Tabs are spaces
set shiftwidth=4                " # of spaces to use for autoindent
set tabstop=4                   " # of spaces that a tab counts for
set softtabstop=4               " # of spaces in tab when editing
set linebreak                   " Wrap lines when convenient
set wrap                        " Wrap lines
set autoindent                  " Minimal automatic indenting for any filetype

" lines and numbers
set number                      " Show line number
set relativenumber              " Relative numbers are good
set numberwidth=6               " Wider linenumbers
set cursorline                  " Show line

" splits
set splitright                  " Splitting will put the new window right
set splitbelow                  " Splitting will put the new window below

" clipboard
set clipboard+=unnamedplus      " Always use system clipboard

" columns
set nojoinspaces                " Set 1 space btwn lines/periods to be joined

" scrolling
set scrolloff=999               " Working line will always be in the center

" undo
set undodir=$HOME/.vim/undodir  " Set persistent undodir path
set undofile                    " Write changes to the undofile
set undolevels=1000             " Max # of changes that can be undone
set undoreload=10000            " Max # of lines to save for undo on buf reload
set directory=$HOME/.vim/swp//  " Write swap files in one directory, unique nms
" }}}
" STATUSLINE {{{

function! ReadOnly()
  if &readonly || !&modifiable
    return ''
  else
    return ''
endfunction

function! GitInfo()
  let git = fugitive#head()
  if git != ''
    return ' '.fugitive#head()
  else
    return ''
endfunction

function! LinterStatus() abort
   let l:counts = ale#statusline#Count(bufnr(''))
   let l:all_errors = l:counts.error + l:counts.style_error
   let l:all_non_errors = l:counts.total - l:all_errors
   return l:counts.total == 0 ? '' : printf(
   \ '▏%d⁄%d▕',
   \ l:all_non_errors,
   \ l:all_errors
   \)
endfunction

set statusline=
set statusline+=\ %<%F\ %M\ %{ReadOnly()}\ %w
set statusline+=%=
set statusline+=%#error#%{LinterStatus()}%*
set statusline+=\ %{GitInfo()}
set statusline+=\ %y
set statusline+=\ %c\ %p%%
set statusline+=\ %*

" }}}
" MAPPINGS {{{

" space as leader
let mapleader = "\<space>"
let maplocalleader = ","

" motion across wrapped lines
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" move to beginning/end of line
nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L $

" move up/down half a screen
nnoremap J <C-d>
nnoremap K <C-u>

" use arrows to resize panes in normal mode
nnoremap <Left> :vertical resize -1<CR>
nnoremap <Right> :vertical resize +1<CR>
nnoremap <Up> :resize -1<CR>
nnoremap <Down> :resize +1<CR>

" don't use arrows for movement in insert mode
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

" highlight last inserted text
nnoremap gV `[v`]<Paste>

" disable Ex mode
nnoremap Q nop

" toggle wrap
nnoremap <leader>w :ToggleWrap<CR>

" turn off search highlight
nnoremap <leader>s :nohlsearch<CR>

" change/source config
nnoremap <leader>vr :sp $MYVIMRC<cr>
nnoremap <leader>so :source $MYVIMRC<cr>

" fzf mappings
nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>rg :Rg<CR>

" quick exit and save
inoremap jk <esc>
inoremap kj <esc>
inoremap <C-s> <esc>:w<cr>
nnoremap <C-s> <esc>:w<cr>

" split faster
nnoremap <leader>h :split<CR>
nnoremap <leader>v :vsplit<CR>

" easy split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" tabs
nnoremap tn :tabnew<Space>
nnoremap tk :tabprevious<CR>
nnoremap tj :tabnext<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>
" nnoremap <S-Tab> gt
" nnoremap <silent> <S-t> :tabnew<CR>

" open/close folds
nnoremap <Tab> za

" pear-tree: jump after the closed bracket
imap <A-Tab> <Plug>(PearTreeJump)

" quick open notational notes
nnoremap <silent> <leader>n :NV<CR>

" jump between ALE warnings
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" replace the word under cursor
nnoremap <leader>* :%s/\<<c-r><c-w>\>//g<left><left>

"move lines around
xnoremap <leader>j :m'>+<cr>gv=gv
nnoremap <leader>k :m-2<cr>==
nnoremap <leader>j :m+<cr>==
xnoremap <leader>k :m-2<cr>gv=gv

" open goyo
nnoremap <leader>g :Goyo<CR>
" }}}
" FUNCTIONS {{{

" toggle wrap
function! ToggleWrap()
    if(&wrap == 1)
        set nowrap
    else
        set wrap
    endif
endfunc

command! ToggleWrap call ToggleWrap()

" }}}
" AUGROUPS {{{

au filetype todo setlocal omnifunc=todo#Complete

au filetype todo imap <buffer> + +<C-X><C-O>
au filetype todo imap <buffer> @ @<C-X><C-O>


augroup FILETYPES
    autocmd!
    autocmd FileType markdown let b:indentLine_enabled = 0
    autocmd FileType markdown setlocal norelativenumber nonumber
augroup END

" augroup pencil
"   autocmd!
"   autocmd FileType markdown,mkd call pencil#init()
"   autocmd FileType text         call pencil#init()
" augroup END

" }}}
