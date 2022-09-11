-- setup essentials running configuration
vim.g.python3_host_prog = os.getenv('PYTHON_HOST_PROG')
vim.g.python3_host_skip_check = 1
vim.g.loaded_python_provider = 0
vim.g.bulitin_lsp = true

-- setup cursor aspects
vim.o.guicursor = 'i:hor10-blinkwait300-blinkon200-blinkoff150'

-- setup line numbers
vim.o.number = true

-- setup colors
vim.o.background = 'dark'
vim.o.termguicolors = true
vim.cmd('colorscheme main')

-- setup tab default behaviour
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.tabstop = 4

-- setup hidden caracters visiblity
vim.o.list = true
vim.o.listchars = 'tab:→ '

-- setup netrw
vim.g.netrw_winsize = 30
vim.g.netrw_banner = 0
