------------------------------------------------------------------------
--                     catppuccin configuration                       --
------------------------------------------------------------------------
require('catppuccin').setup({
  flavour = 'mocha',
  no_underline = true,
  integrations = {
    cmp = false,
    gitsigns = false,
    nvimtree = false,
    treesitter = false,
    notify = false,
    mini = {
      enabled = false,
      indentscope_color = '',
    },
  },
})
