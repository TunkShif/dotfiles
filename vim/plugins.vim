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
"Plug 'ervandew/supertab'
Plug 'maralla/completor.vim'

" markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'iamcco/markdown-preview.vim', { 'for': 'markdown' }

" rust
Plug 'rust-lang/rust.vim', { 'for': 'rust' }

call plug#end()

" --------
" settings
" --------
colorscheme Tomorrow-Night-Eighties
let g:airline_theme = 'bubblegum'

" plug
nnoremap <Leader>pi :PlugInstall<CR>
nnoremap <Leader>pc :PlugClean<CR>
nnoremap <Leader>pu :PlugUpdate<CR>

" nerdtree
nnoremap <C-f> :NERDTreeToggle<CR>

" markdown
let g:vim_markdown_folding_disabled = 1
nmap <silent> <F8> <Plug>MarkdownPreview
imap <silent> <F8> <Plug>MarkdownPreview

