require('lualine').setup {
    options = {
        theme = 'codedark'
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff' },
        lualine_c = { 'filename' },
        lualine_x = {},
        lualine_y = { 'filetype' },
        lualine_z = { 'location' },
    },
    inactive_sessions = {
        lualine_a = { 'filename' },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
    },
    extensions = { 'nvim-tree' },
}
