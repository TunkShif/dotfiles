local cmd = vim.cmd

require('auto-session').setup {}

require('session-lens').setup {}

require("telescope").load_extension("session-lens")

cmd [[
nnoremap <Leader>sl :SearchSession<CR>
nnoremap <Leader>ss :SaveSession<CR>
]]
