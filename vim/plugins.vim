" -------
" plugins
" -------
call plug#begin('~/.vim/vundle')

" appearance
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'

" utils
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'

" markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'iamcco/markdown-preview.vim', { 'for': 'markdown' }

" python
Plug 'davidhalter/jedi-vim', { 'for': 'python' }

call plug#end()

" --------
" settings
" --------
colorscheme Tomorrow-Night-Eighties

" plug
nnoremap <Leader>pi :PlugInstall<CR>
nnoremap <Leader>pc :PlugClean<CR>
nnoremap <Leader>pu :PlugUpdate<CR>

" supertab
let g:SuperTabContextDefaultCompletionType = "context"

" markdown
let g:vim_markdown_folding_disabled = 1

nmap <silent> <F8> <Plug>MarkdownPreview
imap <silent> <F8> <Plug>MarkdownPreview

" python
autocmd FileType python setlocal completeopt-=preview
let g:jedi#use_splits_not_buffers = "right"
let g:jedi#completions_command = "<C-P>"

