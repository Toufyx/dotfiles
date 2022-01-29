local lint = require('lint')

-- setup linters
lint.linters_by_ft = {
  vue = { 'eslint' },
}

-- setup auto command triggering linter
vim.api.nvim_command("autocmd TextChanged <buffer> lua require('lint').try_lint()")
