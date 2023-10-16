------------------------------------------------------------------------
--                   nvim-treesitter configuration                    --
------------------------------------------------------------------------
require('nvim-treesitter.configs').setup({
  ensure_installed = {
    'python',
    'rust',
    'lua',
  },
  highlight = {
    enable = true,
    use_languagetree = true,
  },
  indent = {
    enable = true,
  },
})
