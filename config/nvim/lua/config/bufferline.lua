local cmd = vim.cmd

require('bufferline').setup{
  options = {
    numbers = 'none',
    diagnostics = 'nvim_lsp',
    offsets = {{ filetype = 'NvimTree', text = 'File Explorer', text_align = 'left' }},
    show_close_icon = false
  }
}

cmd [[
nnoremap <silent>[b :BufferLineCyclePrev<CR>
nnoremap <silent>]b :BufferLineCycleNext<CR>
nnoremap <silent>[B :BufferLineMovePrev<CR>
nnoremap <silent>]B :BufferLineMoveNext<CR>
nnoremap <silent><Leader>b :BufferLinePick<CR>
]]
