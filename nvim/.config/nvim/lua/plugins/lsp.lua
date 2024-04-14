local lsp_zero = require('lsp-zero')


lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

lsp_zero.setup_servers({'tsserver', 'solargraph'})


require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {'tsserver', 'solargraph'},
  handlers = {
    lsp_zero.default_setup,
  }
})
local cmp = require('cmp')

cmp.setup({
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  sources = {
    {name = 'path'},
    {name = 'nvim_lsp'},
    {name = 'nvim_lua'},
  },
  formatting = lsp_zero.cmp_format(),
  mapping = cmp.mapping.preset.insert({
    ['<c-p>'] = cmp.mapping.select_prev_item(),
    ['<c-n>'] = cmp.mapping.select_next_item(),
    ['<c-y>'] = cmp.mapping.confirm({ select = true }),
    ['<c-space>'] = cmp.mapping.complete(),
  }),
})

