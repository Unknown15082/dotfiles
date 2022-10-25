-- Global options

local opts = { noremap = true, silent = true }
-- Diagnostic in floating window
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)

-- Previous diagnostic
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)

-- Next diagnostic
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)

local on_attach = function(client, bufnr)
    -- Completion
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings
    local bufopts = { noremap = true, silent = true, buffer = bufnr}

    -- Goto declaration
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    
    -- Goto definition
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    
    -- Show hover information
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    
    -- List all implementations
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    
    -- List all references
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    
    -- Display signature
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)

    -- Display type symbol definition
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
    
    -- Rename
    vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, bufopts)
    
    -- Code actions
    vim.keymap.set('n', '<F4>', vim.lsp.buf.code_action, bufopts)
    
    -- Format code
    vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

local lsp_flags = {
    debounce_text_changes = 150,
}

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require('lspconfig')['gopls'].setup {
    cmd = { 'gopls' },
    filetypes = { 'go', 'gomod', 'gowork' },
    root_dir = require'lspconfig/util'.root_pattern('go.mod', '.git'),
    single_file_support = true,

    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}

require('lspconfig')['clangd'].setup {
    cmd = { 'clangd' },
    filetypes = { 'cpp' },

    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}
