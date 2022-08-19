-- setup essentials running configuration
vim.g.python3_host_prog = '$HOME/Workspace/git/kornelia-backend/.venv/bin/python3'
vim.g.python3_host_skip_check = 1
vim.g.loaded_python_provider = 0
vim.g.bulitin_lsp = true

-- setup cursor aspects
vim.o.guicursor = 'i:hor10-blinkwait300-blinkon200-blinkoff150'

-- setup line length limits
vim.o.colorcolumn = '80,120'
vim.highlight.create('ColorColumn', { ctermbg = 8 }, false)

-- setup line numbers
vim.o.number = true

-- setup gruvbox theme
vim.o.background = 'dark'
vim.o.termguicolors = true
vim.g.gruvbox_invert_selection = 0
vim.cmd('colorscheme gruvbox')

-- setup tab default behaviour
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.tabstop = 4

-- setup hidden caracters visiblity
vim.o.list = true
vim.o.listchars = 'tab:→ '
