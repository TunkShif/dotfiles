local cmd = vim.cmd

cmd [[
  " style
  set ruler
  set number
  set cursorline
  set laststatus=2
  set cmdheight=1
  set termguicolors

  " edit
  set autoindent
  set smarttab
  set expandtab
  set shiftwidth=2
  set nowrap
  set nofoldenable

  " relative number
  set relativenumber
  "autocmd InsertEnter * :set relativenumber
  "autocmd InsertLeave * :set norelativenumber

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

  " encode
  set encoding=utf-8

  " log
  set verbosefile=~/.cache/nvim/nvim.log
  "set verbose=15
]]
