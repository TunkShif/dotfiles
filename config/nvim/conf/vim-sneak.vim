" vim-sneak highligh color
highlight Sneak cterm=bold,underline gui=bold,underline ctermfg=15 ctermbg=39 guifg=#FFFFFF guibg=#61AFEF
highlight SneakScope cterm=bold,underline gui=bold,underline ctermfg=15 ctermbg=39 guifg=#FFFFFF guibg=#61AFEF
highligh SneakLabel cterm=bold,underline gui=bold,underline ctermfg=15 ctermbg=39 guifg=#FFFFFF guibg=#61AFEF
highligh SneakLabelMask cterm=bold,underline gui=bold,underline ctermfg=15 ctermbg=39 guifg=#FFFFFF guibg=#61AFEF

" easymotion style
let g:sneak#label = 1

" replace default f t search
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T
