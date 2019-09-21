" vim:foldmethod=marker:foldlevel=0

" MINPAC {{{
packadd minpac
call minpac#init()

" minpac must have {'type': 'opt'} so that it can be loaded with `packadd`.
call minpac#add('k-takata/minpac', {'type': 'opt'})

call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-repeat')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-sensible')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-sleuth')

call minpac#add('machakann/vim-highlightedyank')
call minpac#add('airblade/vim-gitgutter')

" colorscheme
call minpac#add('romainl/Apprentice')
call minpac#add('andreypopp/vim-colors-plain')
call minpac#add('lifepillar/vim-colortemplate')

set termguicolors
set background=dark

function! MyHighlights() abort
    hi Normal ctermbg=234 ctermfg=242 cterm=NONE guibg=NONE guifg=#bcbcbc gui=NONE
    hi Folded ctermbg=234 ctermfg=242 cterm=NONE guibg=NONE guifg=#6c6c6c gui=NONE
    hi FoldColumn ctermbg=234 ctermfg=242 cterm=NONE guibg=#262626 guifg=#6c6c6c gui=NONE
    hi LineNr ctermbg=234 ctermfg=242 cterm=NONE guibg=#262626 guifg=#6c6c6c gui=NONE
    hi StatusLine ctermbg=231 ctermfg=160 cterm=NONE guibg=#262626 guifg=#6C6C6C gui=UNDERLINE
    hi StatusLineNC ctermbg=231 ctermfg=160 cterm=NONE guibg=#262626 guifg=#444444 gui=UNDERLINE
    hi TabLine ctermbg=238 ctermfg=101 cterm=NONE guibg=#262626 guifg=#6C6C6C gui=underline
    hi TabLineFill ctermbg=238 ctermfg=238 cterm=NONE guibg=#262626 guifg=#6C6C6C gui=underline
    hi TabLineSel ctermbg=101 ctermfg=235 cterm=NONE guibg=#444444 guifg=#BCBCBC gui=underline
    hi Title ctermbg=NONE ctermfg=231 cterm=NONE guibg=NONE guifg=#ffffff gui=bold
    hi EndOfBuffer ctermbg=NONE ctermfg=240 cterm=NONE guibg=NONE guifg=#444444 gui=NONE
    hi VertSplit ctermbg=238 ctermfg=238 cterm=NONE guibg=#262626 guifg=#444444 gui=NONE
    hi ModeMsg ctermbg=108 ctermfg=235 cterm=NONE guibg=#262626 guifg=#5FAFAF gui=bold
endfunction

augroup MyColors
    autocmd!
    autocmd ColorScheme * call MyHighlights()
augroup END

colorscheme apprentice


call minpac#add('mbbill/undotree')

" call minpac#add('majutsushi/tagbar')

call minpac#add('junegunn/vim-peekaboo')
call minpac#add('nelstrom/vim-visual-star-search')

call minpac#add('sidofc/mkdx')
let g:mkdx#settings     = { 'highlight': { 'enable': 0 },
                        \ 'enter': { 'enable': 1, 'shift': 1 },
			\ 'checkbox': { 'toggles': [' ', 'x'] },
                        \ 'links': { 'external': { 'enable': 1 } },
                        \ 'toc': { 'text': 'Table of Contents', 'update_on_write': 0 },
                        \ 'fold': { 'enable': 0 } }

" call minpac#add('lervag/wiki.vim')
" let g:wiki_root = '~/Dropbox/Notes/'
" let g:wiki_filetypes = ['md']
" let g:wiki_link_extension = '.md'
" let g:wiki_list_todos = ['[ ]', '[x]']
" let g:wiki_link_target_type = 'md'
" let g:wiki_mappings_use_defaults = 0
" let g:wiki_mappings_global = {
" 	\ '<plug>(wiki-list-toggle)' : '<c-t>',
" 	\ '<plug>(wiki-link-next)' : '<c-j>',
" 	\ '<plug>(wiki-link-prev)' : '<c-k>',
" 	\}

call minpac#add('plasticboy/vim-markdown')
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_no_extensions_in_markdown = 1
let g:vim_markdown_autowrite = 1
let g:vim_markdown_edit_url_in = 'vsplit'
let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_no_default_key_mappings = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_new_list_item_indent = 0
let g:vim_markdown_fenced_languages = ['gdscript=gdscript3']

call minpac#add('freitass/todo.txt-vim')

" call minpac#add('iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' })
" let g:mkdp_browser = 'Safari'
call minpac#add('previm/previm')
let g:previm_open_cmd = 'open -a Safari'

call minpac#add('junegunn/goyo.vim')
let g:goyo_width = 88

call minpac#add('konfekt/fastfold')
nmap zz <Plug>(FastFoldUpdate)
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']
let g:markdown_folding = 1

call minpac#add('masukomi/vim-markdown-folding', { 'for': 'markdown' })
" let g:markdown_fold_style = 'nested'

call minpac#add('calviken/vim-gdscript3')
call minpac#add('mxw/vim-jsx')
call minpac#add('tmsvg/pear-tree')

call minpac#add('SirVer/ultisnips', { 'for': 'markdown' })
call minpac#add('honza/vim-snippets')
let g:UltiSnipsExpandTrigger="<C-e>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

call minpac#add('lifepillar/vim-mucomplete')
set completeopt+=menuone
set completeopt+=noselect
set shortmess+=c
set belloff+=ctrlg
let g:mucomplete#enable_auto_at_startup = 1

call minpac#add('reedes/vim-pencil')

call minpac#add('w0rp/ale')
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

call minpac#add('dbmrq/vim-ditto')
nmap <leader>di <Plug>ToggleDitto

call minpac#add('ludovicchabant/vim-gutentags')

call minpac#add('prettier/vim-prettier', { 'do': 'yarn install' })
call minpac#add('editorconfig/editorconfig-vim')

call minpac#add('junegunn/fzf.vim')
set rtp+=/usr/local/opt/fzf
let $FZF_DEFAULT_COMMAND = 'rg --files'
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
" let g:fzf_layout = { 'down': '~40%' }

" In Neovim, you can set up fzf window using a Vim command
" let g:fzf_layout = { 'window': 'enew' }
" let g:fzf_layout = { 'window': '-tabnew' }
" let g:fzf_layout = { 'window': '10new' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'
augroup fzf_statusline
    autocmd! FileType fzf
    autocmd  FileType fzf set laststatus=0 noshowmode noruler
      \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
augroup END

call minpac#add('https://github.com/Alok/notational-fzf-vim')
let g:nv_search_paths = ['~/Dropbox/Notes/']
let g:nv_use_short_pathnames = 1

call minpac#add('lifepillar/vim-cheat40')

command! Pu call minpac#update()
command! Pc call minpac#clean()
command! Ps call minpac#status()
"}}}
" SETTINGS {{{

filetype plugin indent on       " no idea
syntax on

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

" text, tabs and indents
" set expandtab                   " Tabs are spaces
" set shiftwidth=4                " # of spaces to use for autoindent
" set tabstop=4                   " # of spaces that a tab counts for
" set softtabstop=4               " # of spaces in tab when editing
" set linebreak                   " Wrap lines when convenient
" set wrap                        " Wrap lines
" set autoindent                  " Minimal automatic indenting for any filetype
" set listchars=tab:▸\ ,eol:¬,
" set list

" lines and numbers
" set nonumber                      " Show line number
" set norelativenumber              " Relative numbers are good
" set numberwidth=4               " Wider linenumbers
set cursorline                  " Show line
set nocursorcolumn
set norelativenumber
set synmaxcol=200
" let loaded_matchparen = 1

" splits
set splitright                  " Splitting will put the new window right
set splitbelow                  " Splitting will put the new window below

" columns
set nojoinspaces                " Set 1 space btwn lines/periods to be joined

" scrollin
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
set statusline+=%<%F\ %M\ %{ReadOnly()}\ %w
set statusline+=%=
set statusline+=%#error#%{LinterStatus()}%*
set statusline+=\ %{GitInfo()}
set statusline+=\ %y
set statusline+=\ %3l:%-2.2c\ %P
set statusline+=\ %*

" }}}
" MAPPINGS {{{

" space as leader
let mapleader = "\<space>"
let maplocalleader = ","

" ¯\_(ツ)_/¯
map <silent> q: :q<Cr>
map <silent> Q: :q<Cr>
map <silent> Q q<Cr>

" yank/put to system clipboard
vnoremap <leader>y "+y
nnoremap <leader>y "+y
nnoremap <leader>p "+p
vnoremap <leader>p "+p

" toggle spell
nnoremap <leader>sp :set spell<CR>

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

" move up/down across empty lines
nnoremap J }
nnoremap K {
vnoremap J }
vnoremap K {

" easier one-off navigation in insert mode
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

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
nnoremap <leader>ww :ToggleWrap<CR>

" turn off highlight
nnoremap <leader>cc :nohl<CR>

" change/source config
nnoremap <leader>vr :vsp $MYVIMRC<cr>
nnoremap <leader>sr :source $MYVIMRC<cr>

" fzf mappings
nnoremap <leader>ff :Files<CR>
nnoremap <leader>bb :Buffers<CR>
nnoremap <leader>cm :Commands<CR>
nnoremap <leader>nn :NV<CR>
nnoremap <leader>rg :Rg<CR>

" quick save
inoremap <C-s> <esc>:w<cr>
nnoremap <C-s> <esc>:w<cr>
inoremap <D-s> <esc>:w<cr>
nnoremap <D-s> <esc>:w<cr>

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
nnoremap <S-Tab> gt
nnoremap <silent> <S-t> :tabnew<CR>

" open/close folds
nnoremap <Tab> za

" pear-tree: jump after the closed bracket
imap <C-Tab> <Plug>(PearTreeJump)

" quick open notational notes

" jump between ALE warnings
" nmap <silent> <C-j> <Plug>(ale_next_wrap)
" nmap <silent> <C-k> <Plug>(ale_previous_wrap)

" replace the word under cursor
nnoremap <leader>* :%s/\<<c-r><c-w>\>//g<left><left>

"move lines around
xnoremap <leader>j :m'>+<cr>gv=gv
nnoremap <leader>k :m-2<cr>==
nnoremap <leader>j :m+<cr>==
xnoremap <leader>k :m-2<cr>gv=gv

" open goyo
nnoremap <leader>g :Goyo<CR>

"}}}
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

" }}}
