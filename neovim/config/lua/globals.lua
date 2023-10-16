------------------------------------------------------------------------
--                         global variables                          --
------------------------------------------------------------------------
local utils = require('utils')
local api = vim.api
local fn = vim.fn

-- setup builtin variables
vim.g.loaded_perl_provider = 0 -- Disable perl provider
vim.g.loaded_ruby_provider = 0 -- Disable ruby provider
vim.g.loaded_node_provider = 0 -- Disable node provider
vim.g.did_install_default_menus = 1 -- do not load menu

-- handle python stuff
if utils.executable('python3') then
  vim.g.python3_host_prog = fn.exepath('python3')
else
  api.nvim_err_writeln('Python3 executable not found!')
  return
end

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.netrw_liststyle = 3

-- set colorscheme
vim.cmd.colorscheme('catppuccin')

-- set leader to <space>
vim.g.mapleader = ' '

-- setup cursor aspects
vim.o.guicursor = 'i:hor10-blinkwait300-blinkon200-blinkoff150'

-- setup line numbers
vim.o.number = true

-- setup tab default behaviour
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.tabstop = 4

-- setup hidden caracters visiblity
vim.o.list = true
vim.o.listchars = 'tab:→ '

-- fix gutters to avoid disgnostics glitches
vim.o.signcolumn = 'yes'

-- share clipboard with system
vim.opt.clipboard:append({ 'unnamed', 'unnamedplus' })
