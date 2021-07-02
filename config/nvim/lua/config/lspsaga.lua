local cmd = vim.cmd

require('lspsaga').init_lsp_saga()

cmd [[
" hover doc
nnoremap <silent>K :Lspsaga hover_doc<CR>

" code action
nnoremap <silent><leader>ca :Lspsaga code_action<CR>
vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>

" rename
nnoremap <silent><leader>cr :Lspsaga rename<CR>

" definiton preview
nnoremap <silent><leader>cd :Lspsaga preview_definition<CR>

" smart scroll
nnoremap <silent><C-j> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
nnoremap <silent><C-k> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>

]]
