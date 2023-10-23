------------------------------------------------------------------------
--                        highlights changes                          --
------------------------------------------------------------------------
local colors = require('colors')

-- proxy function
local function highlight(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- change colors of scope indent line
highlight('IblScope', { fg = colors.overlay0 })

-- highlight current line
highlight('CursorLine', { bg = colors.surface0 })
