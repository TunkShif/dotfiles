"====================================
" settings loaded before plugins load
"====================================

" enable italics font for onedark color scheme
let g:onedark_terminal_italics = 1

" clever f highlighted character color
autocmd ColorScheme * highlight default CleverFCustomCharMark cterm=bold,underline gui=bold,underline ctermfg=15 ctermbg=39 guifg=#FFFFFF guibg=#61AFEF
let g:clever_f_mark_char_color = "CleverFCustomCharMark"

