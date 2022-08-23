local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.local/share/nvim/plugged')

-- lua base dependency
Plug('nvim-lua/plenary.nvim')

-- gruvbox colors scheme
Plug('morhetz/gruvbox')

-- status line
Plug('feline-nvim/feline.nvim')

-- generic abstract syntax tree manager, mainly used for awesome color schemes
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })
Plug('nvim-treesitter/nvim-treesitter-textobjects')

-- neovim native LSP client
Plug('neovim/nvim-lspconfig')

-- additional linter/formatter to integrate with native LSP client
Plug('mhartington/formatter.nvim')
Plug('mfussenegger/nvim-lint')

-- completion management
Plug('hrsh7th/cmp-vsnip')
Plug('hrsh7th/vim-vsnip')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/nvim-cmp')

-- git decorations
Plug('lewis6991/gitsigns.nvim')

-- highly extendable fuzzy finder over lists
Plug('nvim-telescope/telescope.nvim')

vim.call('plug#end')
