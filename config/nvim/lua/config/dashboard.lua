local cmd = vim.cmd

vim.g.dashboard_custom_header = {
  [[ ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗]],
  [[ ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║]],
  [[ ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║]],
  [[ ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║]],
  [[ ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║]],
  [[ ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝]]
}

vim.g.dashboard_custom_footer = { 'Build with NeoVim' }
vim.g.dashboard_default_executive = 'telescope'
-- vim.g.dashboard_session_directory = '~/.local/share/nvim/session'
vim.g.indentLine_fileTypeExclude = { 'dashboard' }
vim.g.dashboard_custom_shortcut = {
  last_session = 'SPC s l',
  find_history = 'SPC f h',
  find_file = 'SPC f f',
  new_file = 'SPC f n',
  find_word = 'SPC f g',
  book_marks = 'SPC f m',
  change_colorscheme = 'SPC t c'
}

vim.g.dashboard_custom_shortcut_icon = { find_word = ' ' }

-- vim.g.dashboard_custom_section = {
--   buffer_list = {
--     description = { ' Recently lase session                 SPC b b' },
--     command = 'Some Command\' or function(\'your funciton name\')'
--   }
-- }

-- auto disable bufferline in dashboard
cmd 'autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2'

cmd [[
"nmap <Leader>ss :<C-u>SessionSave<CR>
"nmap <Leader>sl :<C-u>SessionLoad<CR>
nnoremap <silent> <Leader>fh :DashboardFindHistory<CR>
nnoremap <silent> <Leader>ff :DashboardFindFile<CR>
nnoremap <silent> <Leader>tc :DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>fg :DashboardFindWord<CR>
nnoremap <silent> <Leader>fm :DashboardJumpMark<CR>
nnoremap <silent> <Leader>fn :DashboardNewFile<CR>
]]
