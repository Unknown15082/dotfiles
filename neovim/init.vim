" Remap hjkl (left-down-up-right) to jkl; (down-up-left-right)
noremap l h
noremap ; l
noremap h ;

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

" Plugins

call plug#begin()

    Plug 'nvim-lualine/lualine.nvim' | Plug 'nvim-tree/nvim-web-devicons' " Status line
    Plug 'projekt0n/github-nvim-theme' " Github theme
    Plug 'nvim-tree/nvim-tree.lua' " Tree view
    Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' } " Syntax highlighting
    Plug 'ellisonleao/glow.nvim' " Markdown preview

call plug#end()

" lualine
source ~/.config/nvim/lualine.lua

" nvim-tree
source ~/.config/nvim/nvimtree.lua
map <C-k><C-b> :NvimTreeToggle<CR>

" treesitter
source ~/.config/nvim/treesitter.lua

" glow
source ~/.config/nvim/glow.lua

colorscheme github_dark_default

