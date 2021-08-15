" inspired from https://jdhao.github.io/2018/12/24/centos_nvim_install_use_guide_en/
" and https://www.vimfromscratch.com/articles/vim-for-python/
" and https://rapphil.github.io/vim-python-ide/

call plug#begin('~/.local/share/nvim/plugged')

" appearence related plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'

" navigation plugins
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" developments plugins
Plug 'sheerun/vim-polyglot'
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
colorscheme gruvbox
set background=dark " use dark mode

" setup ale
let g:ale_linters = { 'python': ['flake8'] }
let g:ale_fixers = { '*': ['remove_trailing_lines', 'trim_whitespace'], 'python': ['black', 'isort'] }
let g:ale_sign_column_always = 1
let g:ale_fix_on_save = 1

" manage cursor styling
set guicursor=n:block
set guicursor=i-ci:hor70-blinkwait300-blinkon200-blinkoff150

" add line length limit and line numbers
let &colorcolumn="80,".join(range(120,999),",")
highlight ColorColumn ctermbg=8
set cursorline
set number

" config python
let g:python3_host_prog=$HOME.'/.nvimenv/bin/python3'
