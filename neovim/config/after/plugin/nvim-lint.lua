local lint = require('lint')

-- customize python tools to use configured python interpreter
lint.linters.pylint.cmd = os.getenv('PYTHON_HOST_PROG')
lint.linters.pylint.args = { '/opt/homebrew/bin/pylint', '-f', 'json' }
lint.linters.mypy.cmd = os.getenv('PYTHON_HOST_PROG')
lint.linters.mypy.args = {
  '/opt/homebrew/bin/mypy',
  '--show-column-numbers',
  '--hide-error-codes',
  '--hide-error-context',
  '--no-color-output',
  '--no-error-summary',
  '--no-pretty',
}
lint.linters.flake8.cmd = os.getenv('PYTHON_HOST_PROG')
lint.linters.flake8.args = {
  '/opt/homebrew/bin/flake8',
  '--format=%(path)s:%(row)d:%(col)d:%(code)s:%(text)s',
  '--no-show-source',
  '-',
}

-- setup linters
lint.linters_by_ft = {
  markdown = { 'vale' },
  javascriptreact = { 'eslint' },
  python = { 'pylint', 'mypy', 'flake8' },
}

-- setup auto command triggering linter
vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
  callback = function()
    require('lint').try_lint()
  end,
})
