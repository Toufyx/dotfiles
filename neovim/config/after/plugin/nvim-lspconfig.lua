local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- disable diagnostics
vim.lsp.handlers['textDocument/publishDiagnostics'] = function() end

--
-- LUA LSP CONFIG
--

lspconfig.sumneko_lua.setup({
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' },
      },
    },
  },
})

--
-- PYTHON LSP CONFIG
--

lspconfig.pyright.setup({
  capabilities = capabilities,
  cmd = { 'pyright-langserver', '--stdio' },
  settings = {
    python = {
      pythonPath = os.getenv('PYTHON_PATH'),
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
      },
    },
  },
})
