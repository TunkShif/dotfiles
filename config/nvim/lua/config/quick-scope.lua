local cmd = vim.cmd

-- Trigger a highlight in the appropriate direction when pressing these keys
vim.g.qs_highlight_on_keys = {'f', 'F', 't', 'T'}

-- Customize highlight colors
cmd [[
highlight QuickScopePrimary cterm=underline gui=underline guifg=#61AFEF ctermfg=39
highlight QuickScopeSecondary cterm=underline gui=underline guifg=#C678DD ctermfg=170
]]
