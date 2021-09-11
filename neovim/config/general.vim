" setup terminal true colors
set termguicolors

" setup cursor styling
set guicursor=n:block
set guicursor=i-ci:hor70-blinkwait300-blinkon200-blinkoff150

" setup line length limits
let &colorcolumn="80,120"
highlight ColorColumn ctermbg=8

" setup line numbers
set number

" setup python config
let g:python3_host_prog=$HOME.'/.nvimenv/bin/python3'
let g:loaded_python_provider=0

" setup colorscheme
colorscheme gruvbox

" make tabs 4 chars instead of 8
set tabstop=4

" show hidden characters
set list
set listchars=tab:→\ ,space:·
