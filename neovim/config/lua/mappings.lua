------------------------------------------------------------------------
--                     keymapping configuration                       --
------------------------------------------------------------------------
local keymap = vim.keymap
local lsp = vim.lsp

-- nvim tree shortcuts
keymap.set('n', '<C-n>', '<Cmd>NvimTreeToggle<CR>', { silent = true })

-- telescope shortcuts
local telescope = require('telescope.builtin')
keymap.set('n', '<leader>ff', telescope.find_files, {})
keymap.set('n', '<leader>fg', telescope.live_grep, {})
keymap.set('n', '<leader>fb', telescope.buffers, {})
keymap.set('n', '<leader>fh', telescope.help_tags, {})

-- lsp key bindings
keymap.set('n', 'gd', lsp.buf.definition, {})

-- trouble key bindings
---@diagnostic disable: different-requires
local trouble = require('trouble')
keymap.set('n', '<leader>xx', trouble.toggle, {})
