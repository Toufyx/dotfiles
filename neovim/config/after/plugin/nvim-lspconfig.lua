local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

--
-- VUE JS LSP CONFIG
--

lspconfig.vuels.setup({
  capabilities = capabilities,
  cmd = { 'vls' },
  filetypes = { 'vue' },
})

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

local function on_python_init(client)
  client.config.settings.python.pythonPath = '/Users/tdefeyter/Workspace/git/kornelia-backend/.venv/bin/python3'
end

lspconfig.pyright.setup({
  capabilities = capabilities,
  on_init = on_python_init,
})
