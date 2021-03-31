" settings loaded before plugins load
runtime conf/before.vim

" -------
" plugins
" -------
call plug#begin('~/.local/share/nvim/plugged')

" appearance
Plug 'joshdick/onedark.vim'

" utils
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
Plug 'justinmk/vim-sneak'
Plug 'rhysd/clever-f.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tomtom/tcomment_vim'
Plug 'godlygeek/tabular'

" code
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'cespare/vim-toml'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" always load this plugin as the last one
Plug 'ryanoasis/vim-devicons'
call plug#end()

" --------
" settings
" --------
runtime conf/onedark.vim
runtime conf/indent-line.vim
runtime conf/airline.vim
runtime conf/nerdtree.vim
runtime conf/vim-sneak.vim
runtime conf/clever-f.vim
runtime conf/coc.vim
runtime conf/vim-clap.vim
runtime conf/vim-markdown.vim
