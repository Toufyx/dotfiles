call plug#begin('~/.local/share/nvim/plugged')

Plug 'morhetz/gruvbox' " gruvbox color scheme
Plug 'nvim-lua/plenary.nvim' " lua dependency
Plug 'nvim-telescope/telescope.nvim' " fuzzy finder
Plug 'kyazdani42/nvim-web-devicons' " file icons
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " syntax tree
Plug 'neovim/nvim-lspconfig' " add LSP server
Plug 'glepnir/lspsaga.nvim' " UI enhancements for LSP config
Plug 'vim-airline/vim-airline' " vim status line
Plug 'vimjas/vim-python-pep8-indent' " python auto indentation
Plug 'lewis6991/gitsigns.nvim' " super fast git decorations implemented purely in lua/teal.

call plug#end()

" source plugin config
for plugin in split(glob('$HOME/.config/nvim/plugins.d/*.vim'), '\n')
    exe 'source' plugin
endfor
