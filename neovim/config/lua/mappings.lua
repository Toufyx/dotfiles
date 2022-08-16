local map = require("utils").map
local opts = { noremap=true, silent=true }

-- telescope key bindings
map("n", "ff", "<cmd> Telescope find_files <CR>", opts)
map("n", "fg", "<cmd> Telescope live_grep <CR>", opts)
map("n", "fb", "<cmd> Telescope buffers <CR>", opts)

-- formatter kye bindings
map("n", "f", "<cmd> Format <CR>")

-- lsp key bindings
map("n", "gd","<cmd> lua vim.lsp.buf.definition() <CR>")
