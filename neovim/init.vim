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

" Switching tabs

map <M-Left> <C-W><Left> 
map <M-Right> <C-W><Right>
map <M-Up> <C-W><Up>
map <M-Down> <C-W><Down>

" Plugins

call plug#begin()

    Plug 'nvim-lualine/lualine.nvim' | Plug 'nvim-tree/nvim-web-devicons' " Status line
    Plug 'projekt0n/github-nvim-theme' " Github theme
    Plug 'nvim-tree/nvim-tree.lua' " Tree view

call plug#end()

lua << LUALINE
require('lualine').setup {
    options = {
        theme = 'codedark'
    }
}
LUALINE

lua << TREE
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

require('nvim-tree').setup({
    view = {
        mappings = {
            list = {
                { key = "<CR>", action = "cd" },
            }
        }
    }
})
TREE

map <C-k><C-b> :NvimTreeToggle<CR>

colorscheme github_dark_default

