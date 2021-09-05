lua << EOF
local lspconfig = require('lspconfig')

local on_attach_format = function(client, bufnr)
  if client.resolved_capabilities.document_formatting then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync(nil, 2000)]]
    vim.api.nvim_command [[augroup END]]
  end
end

-- set up pyright
lspconfig.pyright.setup {
  on_attach = on_attach_format,
  handlers = {
    ["textDocument/publishDiagnostics"] = function() end
  }
}

-- set up efm to run python linters and formatters
lspconfig.efm.setup {
  on_attach = on_attach_format,
  cmd = { 'efm-langserver' },
  init_options = { documentFormatting = true },
  filetypes = { "python" },
  settings = {
    rootMarkers = { ".git/", "pyproject.toml" },
    languages = {
      python = {
        {
          lintCommand = 'pylint --output-format text --score no --msg-template "{path}:{line}:{column}:{C}:[pylint] {msg} [{msg_id}]" ${INPUT}',
          lintStdin =  true,
          lintFormats = { '%f:%l:%c:%t:%m' },
          lintOffsetColumns = 1,
          lintCategoryMap = { I = 'H', R = 'I', C = 'I', W = 'W', E = 'E', F = 'E' }
        },
        {
          lintCommand = 'flake8 --format="%(path)s:%(row)d:%(col)d:[flake8] %(text)s [%(code)s]" --stdin-display-name ${INPUT} -',
          lintStdin =  true,
          lintFormats = { '%f:%l:%c:%m' },
        },
        {
          formatCommand = 'black --quiet -',
          formatStdin = true
        },
        {
          formatCommand = 'isort --quiet -',
          formatStdin = true
        }
      }
    }
  }
}
EOF
