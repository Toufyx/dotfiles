------------------------------------------------------------------------
--                       plugins configuration                        --
------------------------------------------------------------------------
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

-- install lazy if not installed already
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- configuration for lazy pluogins
local lazy_plugins = {

  -- catppuccin colorscheme
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false,
    priority = 1000,
    config = function()
      require('plugins.catppuccin')
    end,
  },

  -- auto-completion engine
  {
    'hrsh7th/nvim-cmp',
    event = 'VeryLazy',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-vsnip',
      'hrsh7th/vim-vsnip',
    },
    config = function()
      require('plugins.cmp')
    end,
  },

  -- fancy start screen
  {
    'nvimdev/dashboard-nvim',
    lazy = false,
    config = function()
      require('plugins.dashboard')
    end,
  },

  -- show git change (change, delete, add) signs in vim sign column
  {
    'lewis6991/gitsigns.nvim',
    event = 'VeryLazy',
    config = function()
      require('plugins.gitsigns')
    end,
  },

  -- integration between cli and lsp
  {
    'jose-elias-alvarez/null-ls.nvim',
    event = { 'BufRead', 'BufNewFile' },
    config = function()
      require('plugins.nullls')
    end,
  },

  -- indentation gutters
  {
    'lukas-reineke/indent-blankline.nvim',
    event = 'VeryLazy',
    main = 'ibl',
    config = function()
      require('plugins.indentblankline')
    end,
  },

  -- lsp client
  {
    'neovim/nvim-lspconfig',
    event = { 'BufRead', 'BufNewFile' },
    config = function()
      require('plugins.lspconfig')
    end,
  },

  -- status line
  {
    'nvim-lualine/lualine.nvim',
    event = 'VeryLazy',
    config = function()
      require('plugins.lualine')
    end,
  },

  -- telescope
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('plugins.telescope')
    end,
  },

  -- file explorer
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    event = 'VeryLazy',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('plugins.tree')
    end,
  },

  -- syntax highlighter
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require('plugins.treesitter')
    end,
  },
}

-- configuration for lazy itself
local lazy_opts = {
  defaults = { lazy = true },
  install = { colorscheme = { 'catppuccin' } },

  ui = {
    icons = {
      ft = '',
      lazy = '󰂠 ',
      loaded = '',
      not_loaded = '',
    },
  },

  performance = {
    rtp = {
      disabled_plugins = {
        '2html_plugin',
        'tohtml',
        'getscript',
        'getscriptPlugin',
        'gzip',
        'logipat',
        'netrw',
        'netrwPlugin',
        'netrwSettings',
        'netrwFileHandlers',
        'matchit',
        'tar',
        'tarPlugin',
        'rrhelper',
        'spellfile_plugin',
        'vimball',
        'vimballPlugin',
        'zip',
        'zipPlugin',
        'tutor',
        'rplugin',
        'syntax',
        'synmenu',
        'optwin',
        'compiler',
        'bugreport',
        'ftplugin',
      },
    },
  },
}

-- setup lazy plugin management
require('lazy').setup(lazy_plugins, lazy_opts)
