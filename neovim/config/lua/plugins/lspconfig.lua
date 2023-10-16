------------------------------------------------------------------------
--                     catppuccin configuration                       --
------------------------------------------------------------------------
local lspconfig = require('lspconfig')
local utils = require('utils')
local fn = vim.fn

local on_attach = function(client, bufnr)
  client.server_capabilities.documentFormattingProvider = false
  client.server_capabilities.documentRangeFormattingProvider = false
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem = {
  documentationFormat = { 'markdown', 'plaintext' },
  snippetSupport = true,
  preselectSupport = true,
  insertReplaceSupport = true,
  labelDetailsSupport = true,
  deprecatedSupport = true,
  commitCharactersSupport = true,
  tagSupport = { valueSet = { 1 } },
  resolveSupport = {
    properties = {
      'documentation',
      'detail',
      'additionalTextEdits',
    },
  },
}

-- setup python lsp
if utils.executable('pylsp') then
  local venv_path = os.getenv('VIRTUAL_ENV')
  local py_path = nil
  if venv_path ~= nil then
    py_path = venv_path .. '/bin/python3'
  else
    py_path = vim.g.python3_host_prog
  end

  lspconfig.pylsp.setup({
    settings = {
      pylsp = {
        plugins = {
          black = { enabled = true },
          autopep8 = { enabled = false },
          yapf = { enabled = false },
          pylint = { enabled = true, executable = 'pylint' },
          ruff = { enabled = false },
          pyflakes = { enabled = false },
          pycodestyle = { enabled = false },
          pylsp_mypy = {
            enabled = true,
            overrides = { '--python-executable', py_path, true },
            report_progress = true,
            live_mode = false,
          },
          jedi_completion = { fuzzy = true },
          isort = { enabled = true },
        },
      },
    },
    flags = {
      debounce_text_changes = 200,
    },
    capabilities = capabilities,
    on_attach = on_attach,
  })
else
  vim.notify('pylsp not found!', vim.log.levels.WARN, { title = 'Nvim-config' })
end

-- setup lua lsp
if utils.executable('lua-language-server') then
  lspconfig.lua_ls.setup({
    settings = {
      Lua = {
        runtime = {
          version = 'LuaJIT',
        },
        diagnostics = {
          globals = { 'vim' },
        },
        workspace = {
          library = {
            fn.stdpath('config'),
          },
          maxPreload = 2000,
          preloadFileSize = 50000,
        },
      },
    },
    capabilities = capabilities,
    on_attach = on_attach,
  })
else
  vim.notify('lua-language-server not found!', vim.log.levels.WARN, { title = 'Nvim-config' })
end

-- setup rust lsp
if utils.executable('rust-analyzer') then
  lspconfig.rust_analyzer.setup({
    capabilities = capabilities,
    on_attach = on_attach,
  })
else
  vim.notify('rust-analyzer not found!', vim.log.levels.WARN, { title = 'Nvim-config' })
end
