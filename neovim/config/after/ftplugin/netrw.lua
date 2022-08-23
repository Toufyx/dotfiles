local buffer_keymap = vim.api.nvim_buf_set_keymap
local default_opts = { noremap = true, silent = true }

buffer_keymap(0, "n", "q", "<Cmd>bd!<Cr>", default_opts)
buffer_keymap(0, "n", "<Esc>", "<Cmd>bd!<Cr>", default_opts)
