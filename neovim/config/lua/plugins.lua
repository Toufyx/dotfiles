local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.local/share/nvim/plugged')

-- lua base dependency
Plug('nvim-lua/plenary.nvim')

-- gruvbox colors scheme
Plug('morhetz/gruvbox')

-- status line
Plug('nvim-lualine/lualine.nvim')

-- generic abstract syntax tree manager, mainly used for awesome color schemes
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })
Plug('nvim-treesitter/nvim-treesitter-textobjects')

-- neovim native LSP client and additional linter/formatter manager
Plug('mhartington/formatter.nvim')
Plug('mfussenegger/nvim-lint')
Plug('neovim/nvim-lspconfig')

-- git decorations
Plug('lewis6991/gitsigns.nvim')

vim.call('plug#end')
