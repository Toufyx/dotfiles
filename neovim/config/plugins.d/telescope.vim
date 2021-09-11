lua << EOF
local actions = require('telescope.actions')
local telescope = require('telescope')

telescope.setup {
  defaults = {
    sorting_strategy = 'ascending',
    layout_config = {
      prompt_position = 'top',
    },
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    mappings = {
      i = {
        ["<esc>"] = actions.close
      },
    },
  }
}
EOF
