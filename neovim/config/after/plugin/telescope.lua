local telescope = require('telescope')

telescope.setup({
  pickers = {
    find_files = {
      hidden = true,
    },
  },
  defaults = {
    mappings = {
      i = {},
    },
  },
})
