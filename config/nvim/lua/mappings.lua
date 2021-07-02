local cmd = vim.cmd

-- file
cmd 'noremap <Leader>fq  :q<CR>'
cmd 'noremap <Leader>fQ  :q!<CR>'
cmd 'noremap <Leader>fw  :w<CR>'
-- noremap <Leader>fsq :wq<CR>

-- copy and paste
cmd 'vnoremap <Leader>y "+y'
cmd 'nnoremap <leader>y "+y'

cmd 'nnoremap <Leader>p "+p'
cmd 'nnoremap <Leader>P "+P'
cmd 'vnoremap <Leader>p "+p'
cmd 'vnoremap <Leader>P "+P'

-- switch between buffers
-- use operations provided by bufferline instead
-- cmd 'nnoremap <silent> [b :bprevious<CR>'
-- cmd 'nnoremap <silent> ]b :bnext<CR>'
-- cmd 'nnoremap <silent> ]B :bfirst<CR>'
-- cmd 'nnoremap <silent> ]B :blast<CR>'

-- neovim terminal
cmd 'tnoremap <Esc> <C-\\><C-n>'

-- disable search highligh
cmd 'nnoremap <Leader><Esc> :silent! nohls<CR>'
