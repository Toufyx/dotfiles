local formatter = require('formatter')

-- prettier definition
local function prettier()
  return {
    exe = 'prettier',
    args = { '--stdin-filepath', vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)) },
    stdin = true,
  }
end

-- stylua definition
local function stylua()
  return {
    exe = 'stylua',
    args = { '--config-path ' .. os.getenv('HOME') .. '/.stylua.toml', '-' },
    stdin = true,
  }
end

-- setup languages formatter
formatter.setup({
  filetype = {
    vue = { prettier },
    lua = { stylua },
  },
})

-- setup format on save
vim.api.nvim_command('augroup FormatAutogroup')
vim.api.nvim_command('autocmd!')
vim.api.nvim_command('autocmd BufWritePost * FormatWrite')
vim.api.nvim_command('augroup END')
