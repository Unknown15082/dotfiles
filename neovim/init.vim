" Remap hjkl (left-down-up-right) to jkl; (down-up-left-right)
noremap l h
noremap ; l
noremap h ;

noremap <C-w>l <C-w>h
noremap <C-w>; <C-w>l
noremap <C-w>h <C-w>;

" Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Numbers
set number
set relativenumber

" Clipboard
set clipboard=unnamedplus

" Mouse control
set mouse=a

" Autocomplete bracket
imap {<CR> {<CR>}<Esc>ko
imap [<CR> [<CR>]<Esc>ko
imap (<CR> (<CR>)<Esc>ko

" Buffer control
nnoremap gb :ls<CR>:b

" Plugins

call plug#begin()

    Plug 'nvim-lualine/lualine.nvim' | Plug 'nvim-tree/nvim-web-devicons' " Status line
"    Plug 'projekt0n/github-nvim-theme' " Github theme
    Plug 'EdenEast/nightfox.nvim' " Nightfox theme
    Plug 'nvim-tree/nvim-tree.lua' " Tree view
    Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' } " Syntax highlighting
    Plug 'neovim/nvim-lspconfig' " Config for LSP server

    " Autocomplete
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'

    " LuaSnip
    Plug 'L3MON4D3/LuaSnip'
    Plug 'saadparwaiz1/cmp_luasnip'

call plug#end()

" lualine
source ~/.config/nvim/lualine.lua

" nvim-tree
source ~/.config/nvim/nvimtree.lua
map <silent> <C-k><C-b> :NvimTreeToggle<CR>

" treesitter
source ~/.config/nvim/treesitter.lua

" nvim-cmp
set completeopt=menu,menuone,noselect
source ~/.config/nvim/cmp.lua

" LSP config
source ~/.config/nvim/lspconfig.lua

" colorscheme github_dark_default
colorscheme nightfox
