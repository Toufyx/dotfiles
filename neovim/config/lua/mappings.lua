local map = vim.api.nvim_set_keymap
local opts = { noremap=true, silent=true }

-- telescope key bindings
map("n", "ff", "<cmd> Telescope find_files <CR>", opts)
map("n", "fg", "<cmd> Telescope live_grep <CR>", opts)
map("n", "fb", "<cmd> Telescope buffers <CR>", opts)

-- formatter key bindings
map("n", "f", "<cmd> Format <CR>", opts)

-- lsp key bindings
map("n", "gd","<cmd> lua vim.lsp.buf.definition() <CR>", opts)

-- netrw key bindings
map("n", "ls", "<cmd> Lexplore %:p:h <CR>", opts)

-- pane navigation bindings
-- NB. Â stands for <A-z>
-- see: https://github.com/alacritty/alacritty/issues/4048#issuecomment-665970148
map('n', 'Â', '<C-w>', opts)
map('n', 'ÂÂ', '<C-w><C-w>', opts)
