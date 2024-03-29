let g:user42 = 'yoishi'
let g:mail42 = 'yoishi@student.42tokyo.jp'

set number
set cursorline
set virtualedit=onemore
set smartindent
set showmatch
set laststatus=2
set wildmode=list:longest
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
set rnu
set tabstop=4
set shiftwidth=4

let g:mapleader = "\<Space>"

nnoremap <Leader>w :w<CR>
nnoremap <Leader>ww :wq<CR>
nnoremap <Leader>q :q<CR>

syntax enable


imap <C-p> <Up>
imap <C-n> <Down>
imap <C-b> <Left>
imap <C-f> <Right>

nmap J 10j
nmap K 10k

nnoremap L :tabn<CR>
nnoremap H :tabp<CR>

nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
