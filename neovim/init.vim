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

" Plugins

call plug#begin()

    Plug 'nvim-lualine/lualine.nvim' | Plug 'ryanoasis/vim-devicons' " Status line
    Plug 'projekt0n/github-nvim-theme' " Github theme

call plug#end()

colorscheme github_dark_default

lua << END
require('lualine').setup {
    options = {
        theme = 'github_dark_default'
    }
}
END
