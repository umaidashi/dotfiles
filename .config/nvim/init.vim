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

" coc.nvim
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" vim-go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }

" treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" colorscheme
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

call plug#end()



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
" nnoremap <silent> t <Cmd>FloatermToggle<CR>
" tnoremap <silent> <C-T> <Cmd>FloatermToggle<CR>
nnoremap <C-/> <Cmd>FloatermToggle<CR>
tnoremap <C-/> <Cmd>FloatermToggle<CR>
hi FloatermBorder guibg=orange guifg=orange
let g:floaterm_width = 0.98
let g:floaterm_height = 0.7
let g:floaterm_position = 'bottom'

" plug:lazygit
nnoremap <silent> <Leader>g <Cmd>LazyGit<CR>

"plug:barbar
nnoremap <Leader>x <Cmd>BufferClose<CR>

" plug:fzf
nmap <C-p> <Cmd>Files<CR>

" plug:nerdtree
nnoremap <Leader>e <Cmd>NERDTreeFocus<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let g:NERDTreeShowHidden = 1

" plug:coc
nnoremap [coc] <Nop>
nmap ,c [coc]
nmap <silent>[coc]d <Plug>(coc-definition)zz

" plug:telescope
nnoremap <Leader>ff <Cmd>Telescope find_files find_command=rg,--files,--hidden,--glob,!*.git<CR>
nnoremap <Leader>fg <Cmd>Telescope live_grep vimgrep_arguments=rg,--line-number,--column,--smart-case,--hidden,--no-ignore,--glob,!*.git<CR>
nnoremap <Leader>fb <Cmd>Telescope buffers --hidden,--glob,!*.git<CR>
nnoremap <Leader>fh <Cmd>Telescope help_tags<CR>


" plug:treesitter
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
  },
}
EOF

let g:nvcode_termcolors=256
syntax on
" colorscheme catppuccin

" plug:vim-go
let g:go_def_mapping_enabled = 0
let g:go_doc_keywordprg_enabled = 0
nnoremap <Leader>dc <Cmd>GoDoc<CR>
nnoremap <Leader>dw <Cmd>GoDocBrowser<CR>

