let g:ascii_art_header = [
      \'    _   __         _    ___'         ,
      \'   / | / /__  ____| |  / (_)___ ___' ,
      \'  /  |/ / _ \/ __ \ | / / / __ `__ \',
      \' / /|  /  __/ /_/ / |/ / / / / / / /',
      \'/_/ |_/\___/\____/|___/_/_/ /_/ /_/' ,
      \''                                    ,
      \ ]

let g:startify_custom_header = startify#pad(g:ascii_art_header)

let g:startify_lists = [
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ { 'type': 'files',     'header': ['   MRU']            },
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ ]

" Display NerdTree bookmarks
let g:startify_bookmarks = systemlist("cut -sd' ' -f 2- ~/.NERDTreeBookmarks")
