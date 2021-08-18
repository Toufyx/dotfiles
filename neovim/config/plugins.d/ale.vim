" setup ale
let g:ale_linters = { 'python': ['flake8', 'pylint'] }
let g:ale_fixers = { '*': ['remove_trailing_lines', 'trim_whitespace'], 'python': ['black', 'isort'] }
let g:ale_sign_column_always = 1
let g:ale_fix_on_save = 1
