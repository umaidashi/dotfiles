" plugins
call plug#begin()

" floaterm
Plug 'voldikss/vim-floaterm'

" lazygit
Plug 'kdheepak/lazygit.nvim'

" tabline
Plug 'lewis6991/gitsigns.nvim'
Plug 'romgrk/barbar.nvim'
Plug 'kazhala/close-buffers.nvim'

" filer
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" nerdtree
Plug 'preservim/nerdtree'

" icon
Plug 'ryanoasis/vim-devicons'

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
Plug 'sainnhe/gruvbox-material'

" commentout
Plug 'numToStr/Comment.nvim'

" lspconfig
Plug 'neovim/nvim-lspconfig'

" error message
Plug 'nvim-lua/completion-nvim'

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
" set rnu
set tabstop=4
set shiftwidth=4
syntax enable

" leader
let g:mapleader = "\<Space>"

" commands
nnoremap <Leader>s :w<CR>
nnoremap <Leader>ww :wqa<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>qq :q!<CR>

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
let g:webdevicons_enable_nerdtree = 1

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
  ensure_installed = "all",
  highlight = {
    enable = true,
  },
}
EOF
let g:nvcode_termcolors=256
syntax on
colorscheme gruvbox-material

" plug:vim-go
let g:go_def_mapping_enabled = 0
let g:go_doc_keywordprg_enabled = 0
nnoremap <Leader>dc <Cmd>GoDoc<CR>
nnoremap <Leader>dw <Cmd>GoDocBrowser<CR>

" plug:Comment
lua << EOF
require('Comment').setup()
EOF

" plug:completion-nvim
set completeopt=menuone,noinsert,noselect
set shortmess+=c
let g:vimsyn_embed='lPr'
lua << EOF
    local on_attach = function (client, bufnr)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', {noremap = true, silent = true})
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {noremap = true, silent = true})
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', {noremap = true, silent = true})
        require('completion').on_attach(client)
    end
    require('lspconfig').vimls.setup({on_attach = on_attach})
    require('lspconfig').tsserver.setup({on_attach = on_attach})
    require('lspconfig').intelephense.setup({on_attach = on_attach})
EOF
