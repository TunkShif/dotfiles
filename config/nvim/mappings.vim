" file
noremap <Leader>fq  :q<CR>
noremap <Leader>fQ  :q!<CR>
noremap <Leader>fs  :w<CR>
noremap <Leader>fsq :wq<CR>

" copy and paste
vnoremap <Leader>y "+y
nnoremap <leader>y "+y

nnoremap <Leader>p "+p
nnoremap <Leader>P "+P
vnoremap <Leader>p "+p
vnoremap <Leader>P "+P

" switch between buffers
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> ]B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

