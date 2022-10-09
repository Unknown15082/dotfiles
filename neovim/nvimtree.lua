vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

require('nvim-tree').setup({
    view = {
        mappings = {
            list = {
                { key = '<CR>', action = 'cd' },
            }
        }
    },
    filters = {
        custom = {
            '^.git$'
        }
    }
})
