" style
set ruler
set number
set cursorline
set cursorcolumn
set laststatus=2

" edit
set autoindent
set smarttab
set expandtab
set shiftwidth=2

set nowrap
set linebreak
set showbreak=->

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
