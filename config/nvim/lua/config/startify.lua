local cmd = vim.cmd

local ascii_art_header = {
[[    _   __         _    ___]],
[[   / | / /__  ____| |  / (_)___ ___]],
[[  /  |/ / _ \/ __ \ | / / / __ `__ \]],
[[ / /|  /  __/ /_/ / |/ / / / / / / /]],
[[/_/ |_/\___/\____/|___/_/_/ /_/ /_/]]
}

vim.g.startify_custom_header = vim.fn['startify#pad'](ascii_art_header)

vim.g.startify_lists = {
  { type = 'sessions', header = { '  Sessions' } },
  { type = 'files', header = { '  Recent' } }
}

-- auto disable indent line in startify
vim.g.indentLine_fileTypeExclude = { 'startify' }

-- -- auto disable tabline when in startify
-- cmd 'autocmd FileType startify set showtabline=0 | autocmd BufReadCmd set showtabline=2'

cmd [[
nnoremap <Leader>ss :SSave<CR>
nnoremap <Leader>sl :SLoad<CR>
nnoremap <Leader>sd :SDelete<CR>
nnoremap <Leader>sc :SClose<CR>
]]
