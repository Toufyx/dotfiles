------------------------------------------------------------------------
--                    indent-blankline configuration                  --
------------------------------------------------------------------------
require('ibl').setup({
  indent = {
    char = '│',
  },
  scope = {
    show_start = false,
    show_end = false,
  },
  exclude = {
    filetypes = { 'help', 'git', 'markdown', 'snippets', 'text', 'gitconfig', 'alpha', 'dashboard' },
    buftypes = { 'terminal' },
  },
})
