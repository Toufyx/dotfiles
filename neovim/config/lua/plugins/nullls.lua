local null_ls = require('null-ls')
local builtins = null_ls.builtins

local fmt_group = vim.api.nvim_create_augroup('Formatting', { clear = true })
local function fmt_on_save(client, buf)
  if client.supports_method('textDocument/formatting') then
    vim.api.nvim_create_autocmd('BufWritePre', {
      group = fmt_group,
      buffer = buf,
      callback = function()
        vim.lsp.buf.format({
          timeout_ms = 3000,
          buffer = buf,
        })
      end,
    })
  end
end

local sources = {

  -- webdev stuff
  builtins.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  builtins.formatting.prettier.with({ filetypes = { 'html', 'markdown', 'css' } }), -- so prettier works only on these filetypes

  -- Lua
  builtins.formatting.stylua,

  -- rust
  builtins.formatting.rustfmt.with({ args = { '--edition', '2021' } }),

  -- python
  builtins.formatting.isort,
  builtins.formatting.black,
  builtins.diagnostics.flake8,
}

null_ls.setup({
  sources = sources,
  on_attach = fmt_on_save,
})
