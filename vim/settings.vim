" style
set ruler
set number
set cursorline
set laststatus=2
set termguicolors

" edit
set autoindent
set smarttab
set expandtab
set shiftwidth=4

set nowrap

" search
set ignorecase
set smartcase
set hlsearch
set incsearch

" complete
set wildmenu

" filetype
syntax on
filetype plugin indent on

" gui
if has('gui_running')
    set guifont=WenQuanYi\ Micro\ Hei\ Mono\ 12
    set guioptions-=r
    set guioptions-=R
    set guioptions-=l
    set guioptions-=L
    set guioptions-=m
    set guioptions-=T
    set gcr=a:blinkon0
endif

" encode
set encoding=utf-8
