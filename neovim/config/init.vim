" vim config file

" use terminal true colors
set termguicolors

" manage cursor styling
set guicursor=n:block
set guicursor=i-ci:hor70-blinkwait300-blinkon200-blinkoff150

" add line length limit and line numbers
let &colorcolumn="80,120"
highlight ColorColumn ctermbg=8
set number

" config python
let g:python3_host_prog=$HOME.'/.nvimenv/bin/python3'
let g:loaded_python_provider=0

call plug#begin('~/.local/share/nvim/plugged')

" appearence related plugins
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'

" lua plugin for all lua based extensions
Plug 'nvim-lua/plenary.nvim'

" add dev icons for telescope
Plug 'kyazdani42/nvim-web-devicons'

" best finder of the market
Plug 'nvim-telescope/telescope.nvim'

" wrapper around treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" developments plugins
Plug 'dense-analysis/ale'
Plug 'airblade/vim-gitgutter'

" python plugins
Plug 'vimjas/vim-python-pep8-indent'

call plug#end()

" setup airline theme
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1

" setup gruvbox color scheme
let g:gruvbox_invert_selection=0
colorscheme gruvbox

" config for telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope file_browser<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>

" config treesitter
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "python", "toml", "json", "yaml" },
  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = false,
    disable = {},
  },
}
EOF

" setup ale
let g:ale_linters = { 'python': ['flake8', 'pylint'] }
let g:ale_fixers = { '*': ['remove_trailing_lines', 'trim_whitespace'], 'python': ['black', 'isort'] }
let g:ale_sign_column_always = 1
let g:ale_fix_on_save = 1
