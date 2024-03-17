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

" <Leader>というプレフィックスキーにスペースを使用する
let g:mapleader = "\<Space>"

" スペース + wでファイル保存
nnoremap <Leader>w :w<CR>
nnoremap <Leader>ww :wq<CR>
nnoremap <Leader>q :q<CR>

syntax enable


" インサートモードでカーソル移動
imap <C-k> <Up>
imap <C-j> <Down>
imap <C-l> <Left>
imap <C-h> <Right>

nmap J 10j
nmap H 10h
