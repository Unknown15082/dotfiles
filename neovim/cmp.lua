local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

require('cmp').setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    mapping = require('cmp').mapping.preset.insert({
        ['<C-p>'] = require('cmp').mapping.select_prev_item(),
        ['<C-n>'] = require('cmp').mapping.select_next_item(),
        ['<C-space>'] = require('cmp').mapping.complete(),
        ['<C-e>'] = require('cmp').mapping.abort(),
        ['<CR>'] = require('cmp').mapping.confirm({ select = true }),

        ['<Tab>'] = require('cmp').mapping(function(fallback)
            if require('cmp').visible() then
                require('cmp').select_next_item()
            elseif require('luasnip').expand_or_locally_jumpable() then
                require('luasnip').expand_or_jump()
            elseif has_words_before() then
                require('cmp').complete()
            else
                fallback()
            end
        end, { 'i', 's' }),
    }),
    sources = require('cmp').config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' },
    }),
})
