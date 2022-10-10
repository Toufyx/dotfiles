local formatter = require('formatter')

-- yamlfmt
local function yamlfmt()
  return {
    exe = 'yamlfmt -in /dev/stdin',
    args = {},
    stdin = true,
  }
end

-- prettier
local function prettier()
  return {
    exe = 'prettier',
    args = { '--plugin-search-dir=./', '--stdin-filepath', vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)) },
    stdin = true,
  }
end

-- stylua
local function stylua()
  return {
    exe = 'stylua',
    args = { '--config-path ' .. os.getenv('HOME') .. '/.stylua.toml', '-' },
    stdin = true,
  }
end

-- black
local function black()
  return {
    exe = 'black',
    args = { '--quiet', '-' },
    stdin = true,
  }
end

-- isort
local function isort()
  return {
    exe = 'isort',
    args = { '--quiet', '-' },
    stdin = true,
  }
end

-- setup languages formatter
formatter.setup({
  filetype = {
    css = { prettier },
    html = { prettier },
    javascript = { prettier },
    javascriptreact = { prettier },
    typescript = { prettier },
    typescriptreact = { prettier },
    json = { prettier },
    lua = { stylua },
    python = { black, isort },
    vue = { prettier },
    yaml = { yamlfmt },
  },
})

-- setup format on save
local format_autogroup = vim.api.nvim_create_augroup('FormatAutogroup', { clear = true })
vim.api.nvim_create_autocmd('BufWritePost', { command = 'FormatWrite', group = format_autogroup })
