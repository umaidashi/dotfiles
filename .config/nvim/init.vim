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
syntax enable

" leader
let g:mapleader = "\<Space>"

" commands
nnoremap <Leader>w :w<CR>
nnoremap <Leader>ww :wq<CR>
nnoremap <Leader>q :q<CR>

" cursor moving insert mode
imap <C-p> <Up>
imap <C-n> <Down>
imap <C-b> <Left>
imap <C-f> <Right>

" word control
nnoremap <silent> <Space><Space> :let @/ = '\<' . expand('<cword>') . '\>'<CR>:set hlsearch<CR>
nmap # <Space><Space>:%s/<C-r>///g<Left><Left>
nnoremap <silent> <Esc><Esc> :<C-u>nohlsearch<CR>

" not yank
nnoremap x "_x
nnoremap s "_s
nnoremap c "_c

" jump
nmap J 10j
nmap K 10k

" pane switcher
nmap <C-h> <C-W>h
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-l> <C-W>l

" tab switcher
nnoremap H <Cmd>bp<CR>
nnoremap L <Cmd>bn<CR>

" plug:floaterm
nnoremap <silent> t <Cmd>FloatermToggle<CR>
tnoremap <silent> <C-T> <Cmd>FloatermToggle<CR>
hi FloatermBorder guibg=orange guifg=orange
let g:floaterm_width = 0.98
let g:floaterm_height = 0.7
let g:floaterm_position = 'bottom'

" plug:lazygit
nnoremap <silent> <Leader>g <Cmd>LazyGit<CR>

"plug:barbar
nnoremap <Leader>x <Cmd>BufferClose<CR>

" plug:fzf
nmap <C-p> :Files<CR>

" plug:nerdtree
nnoremap <leader>e :NERDTreeFocus<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let g:NERDTreeShowHidden = 1

" plugins
call plug#begin()

" floaterm
Plug 'voldikss/vim-floaterm'

" lazygit
Plug 'kdheepak/lazygit.nvim'

" tabline
Plug 'lewis6991/gitsigns.nvim'
Plug 'romgrk/barbar.nvim'

" filer
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" nerdtree
Plug 'preservim/nerdtree'

" icon
Plug 'nvim-tree/nvim-web-devicons'

Plug '42Paris/42header'

call plug#end()
