local lspconfig = require('lspconfig')

-- configure VueJS LSP
lspconfig.vuels.setup({
  cmd = { 'vls' },
  filetypes = { 'vue' },
})

-- configure Lua LSP
lspconfig.sumneko_lua.setup({
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' },
      },
    },
  },
})

-- configure python LSP
lspconfig.pyright.setup({})
