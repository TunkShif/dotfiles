" settings loaded before plugins load
runtime conf/before.vim

" -------
" plugins
" -------
call plug#begin('~/.local/share/nvim/plugged')

" appearance
Plug 'joshdick/onedark.vim'

" utils
Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }
Plug 'justinmk/vim-sneak'
Plug 'rhysd/clever-f.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tomtom/tcomment_vim'
Plug 'godlygeek/tabular'
Plug 'vimwiki/vimwiki'
Plug 'mhinz/vim-startify'

" code
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'cespare/vim-toml'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'elixir-editors/vim-elixir'
Plug 'udalov/kotlin-vim'

" always load this plugin as the last one
Plug 'ryanoasis/vim-devicons'
call plug#end()

" --------
" settings
" --------
runtime conf/onedark.vim
runtime conf/airline.vim
runtime conf/vim-startify.vim
runtime conf/indent-line.vim
runtime conf/nerdtree.vim
runtime conf/vim-sneak.vim
runtime conf/clever-f.vim
runtime conf/coc.vim
runtime conf/vim-clap.vim
runtime conf/vim-markdown.vim
runtime conf/vimwiki.vim
