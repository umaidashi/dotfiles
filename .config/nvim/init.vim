" plugins
call plug#begin()

" floaterm
Plug 'voldikss/vim-floaterm'

" lazygit
Plug 'kdheepak/lazygit.nvim'

" icon
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-tree/nvim-web-devicons'

" tabline
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
Plug 'kazhala/close-buffers.nvim'

" filer
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" nerdtree
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'

Plug '42Paris/42header'

" vim-go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }

" treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" commentout
Plug 'numToStr/Comment.nvim'

" lualine
Plug 'nvim-lualine/lualine.nvim'

" gitsighns
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'

" bracket auto pair
Plug 'windwp/nvim-autopairs'

" completion
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" copilot
Plug 'github/copilot.vim'

" markdown
Plug 'ixru/nvim-markdown'

" notice
Plug 'folke/noice.nvim'
Plug 'MunifTanjim/nui.nvim'
Plug 'rcarriga/nvim-notify'

" open project root of git
Plug 'ahmedkhalf/project.nvim'

" git linker
Plug 'linrongbin16/gitlinker.nvim'

" hlchunk
Plug 'yaocccc/nvim-hlchunk'

" bqf
Plug 'kevinhwang91/nvim-bqf'

" sandwitch
Plug 'machakann/vim-sandwich'

" tree
Plug 'Wansmer/treesj'

" colorscheme
Plug 'rebelot/kanagawa.nvim'
Plug 'sainnhe/gruvbox-material'

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
nnoremap <silent>s :w<CR>
nnoremap <silent>qw :wqa!<CR>
nnoremap <silent>qq :qa!<CR>

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

" plug:treesitter
lua << EOF
require'nvim-treesitter.configs'.setup {
	ensure_installed = "all",
	highlight = { enable = true },
}
EOF
let g:nvcode_termcolors=256
colorscheme kanagawa

" plug:floaterm
nnoremap <C-/> <Cmd>FloatermToggle<CR>
tnoremap <C-/> <Cmd>FloatermToggle<CR>
hi FloatermBorder guibg=orange guifg=orange
let g:floaterm_width = 0.98
let g:floaterm_height = 0.7
let g:floaterm_position = 'bottom'

" plug:lazygit
nnoremap <silent> <Leader>g <Cmd>LazyGit<CR>

" plug:barbar
nnoremap <Leader>xb <Cmd>BDelete! this<CR>
nnoremap <Leader>xw <Cmd>close<CR>
nnoremap <Leader>xo <Cmd>BDelete! other<CR>
nnoremap <Leader>xa <Cmd>BDelete! all<CR>

" plug:fzf
nmap <C-p> <Cmd>Files<CR>

" plug:nerdtree
nnoremap <Leader>e <Cmd>NERDTreeToggle<CR>
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
" autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let g:NERDTreeShowHidden = 1
let g:webdevicons_enable_nerdtree = 1

" plug:telescope
nnoremap <silent>ff <Cmd>Telescope find_files find_command=rg,--files,--hidden,--glob,!*.git<CR>
nnoremap <silent>fg <Cmd>Telescope live_grep vimgrep_arguments=rg,--line-number,--column,--smart-case,--hidden,--no-ignore,--glob,!*.git<CR>
nnoremap <silent>fb <Cmd>Telescope buffers --hidden,--glob,!*.git<CR>
nnoremap <silent>fh <Cmd>Telescope help_tags<CR>

" plug:vim-go
let g:go_def_mapping_enabled = 0
let g:go_doc_keywordprg_enabled = 0
nnoremap <Leader>dc <Cmd>GoDoc<CR>
nnoremap <Leader>dw <Cmd>GoDocBrowser<CR>
nnoremap <silent>gd <Cmd>GoDef<CR>

" plug:go-lsp
lua <<EOF
require'lspconfig'.gopls.setup{}
EOF

" plug:Comment
lua << EOF
require('Comment').setup()
EOF

" plug:lualine
lua << END
require('lualine').setup()
END

" plug:gitsighns
lua <<END
require('gitsigns').setup()
END

" plug:autopairs
lua << EOF
require("nvim-autopairs").setup {}
EOF

" plug:completion
lua <<EOF
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      end,
    },
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
    }, {
      { name = 'buffer' },
    })
  })

  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    }),
    matching = { disallow_symbol_nonprefix_matching = false }
  })

  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  require('lspconfig')['gopls'].setup {
    capabilities = capabilities
  }
EOF

" plug:noice
lua << EOF
require('noice').setup()
EOF


" plug:bufferline
lua << EOF
require("bufferline").setup{}
EOF

" plug:project_nvim
lua << EOF
require("project_nvim").setup {}
EOF

" plug:gitlinker
lua << EOF
require("gitlinker").setup()
EOF

" plug:bpf
lua << EOF
require("bqf").setup()
EOF

" plug:treesj
lua << EOF
require("treesj").setup()
EOF
