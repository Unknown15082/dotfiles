require('lualine').setup {
    options = {
        theme = 'codedark'
    },
    sections = {
        lualine_x = {},
        lualine_y = { 'filetype' },
    },
    inactive_sessions = {
        lualine_a = { 'filename' },
        lualine_x = {},
    },
    extensions = { 'nvim-tree' },
}
