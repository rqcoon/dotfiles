" Space as leader
let mapleader = "\<Space>"

" Normal mappings
nmap <leader>vr :sp $MYVIMRC<cr>
nmap <leader>so :source $MYVIMRC<cr>

" Insert mappings
imap jk <esc>
imap kj <esc>
imap <C-s> <esc>:w<cr>

" Set
set number
set scrolloff=4
