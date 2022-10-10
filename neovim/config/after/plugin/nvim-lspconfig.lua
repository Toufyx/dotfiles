local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

--
-- LUA LSP CONFIG
--

lspconfig.sumneko_lua.setup({
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file('', true),
      },
      telemetry = {
        enable = false,
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

--
-- TYPESCRIPT LSP CONFIG
--

lspconfig.tsserver.setup({})
