" config for telescope
nnoremap <leader>ff <cmd>Telescope find_files find_command=rg,--ignore,--hidden,--files,--iglob,!.git<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope file_browser<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>

" lsp config
nnoremap <silent>gd <Cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent>K <Cmd>Lspsaga hover_doc<CR>
nnoremap <silent>D <Cmd>Lspsaga show_line_diagnostics<CR>
nnoremap <silent>N <Cmd>Lspsaga diagnostic_jump_next<CR>
nnoremap <silent>P <Cmd>Lspsaga diagnostic_jump_prev<CR>
nnoremap <silent>R <Cmd>Lspsaga rename<CR>
