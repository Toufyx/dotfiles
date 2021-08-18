call plug#begin('~/.local/share/nvim/plugged')

Plug 'morhetz/gruvbox' " gruvbox color scheme
Plug 'nvim-lua/plenary.nvim' " lua dependency
Plug 'nvim-telescope/telescope.nvim' " fuzzy finder
Plug 'kyazdani42/nvim-web-devicons' " file icons
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " syntax tree
Plug 'vim-airline/vim-airline' " vim status line
Plug 'dense-analysis/ale' " adynchronous lint engine
Plug 'airblade/vim-gitgutter' " git information
Plug 'vimjas/vim-python-pep8-indent' " python auto indentation

call plug#end()

" source plugin config
for plugin in split(glob('$HOME/.config/nvim/plugins.d/*.vim'), '\n')
    exe 'source' plugin
endfor
