" config for telescope
nnoremap <leader>ff <cmd>Telescope find_files find_command=rg,--ignore,--hidden,--files,--iglob,!.git<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope file_browser<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>

" lsp config
nnoremap <silent>gd <Cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent>K <Cmd>Lspsaga hover_doc<CR>
inoremap <silent> <C-k> <Cmd>Lspsaga signature_help<CR>

