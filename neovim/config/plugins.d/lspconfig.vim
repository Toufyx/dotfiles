lua << EOF
local lspconfig = require('lspconfig')
local completion = require('completion')

local on_attach_format = function(client, bufnr)
  if client.resolved_capabilities.document_formatting then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync(nil, 2000)]]
    vim.api.nvim_command [[augroup END]]
  end
end

local on_attach_completion = function(client, bufnr)
  completion.on_attach()
end

-- set up pyright
lspconfig.pyright.setup {
  on_attach = on_attach_completion,
  handlers = {
    ["textDocument/publishDiagnostics"] = function() end
  }
}

-- set up efm to run python linters and formatters
lspconfig.efm.setup {
  on_attach = on_attach_format,
  cmd = { 'efm-langserver' },
  init_options = { documentFormatting = true },
  filetypes = { "python", "javascript" },
  settings = {
    rootMarkers = { ".git/", "pyproject.toml" },
    languages = {
      javascript = {
        {
          formatCommand = 'prettier --stdin-filepath ${INPUT}',
          formatStdin = true,
        },
        {
          lintCommand = 'eslint --stdin --stdin-filename ${INPUT} -f visualstudio',
          lintStdin = true,
          lintFormats = {
            "%f(%l,%c): %tarning %m",
            "%f(%l,%c): %rror %m",
          },
          lintIgnoreExitCode = true,
        },
      },
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
          lintCommand = 'mypy --show-column-numbers',
          lintFormats = {
            '%f:%l:%c: %trror: %m',
            '%f:%l:%c: %tarning: %m',
            '%f:%l:%c: %tote: %m'
          },
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

vim.lsp.diagnostic.show_line_diagnostics()
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, { virtual_text = false }
)
EOF
