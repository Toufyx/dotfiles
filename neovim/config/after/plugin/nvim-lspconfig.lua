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

--
-- GLOBAL DIAGNOSTICS CONFIGURATION
--

local function filter(arr, func)
  -- Filter in place
  -- https://stackoverflow.com/questions/49709998/how-to-filter-a-lua-array-inplace
  local new_index = 1
  local size_orig = #arr
  for old_index, v in ipairs(arr) do
    if func(v, old_index) then
      arr[new_index] = v
      new_index = new_index + 1
    end
  end
  for i = new_index, size_orig do
    arr[i] = nil
  end
end

local function filter_diagnostics(diagnostic)
  -- filter out all Pyright stuff
  if diagnostic.source == 'Pyright' then
    return false
  end
end

local function custom_on_publish_diagnostics(a, params, client_id, c, config)
  filter(params.diagnostics, filter_diagnostics)
  vim.lsp.diagnostic.on_publish_diagnostics(a, params, client_id, c, config)
end

vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(custom_on_publish_diagnostics, {})
