local cmd = vim.cmd

require('formatter').setup({
  logging = false,
  filetype = {
    lua = {
      function()
        return {
          exe = 'lua-format',
          args = {
            '--indent-width=2', '--column-limit=100', '--double-quote-to-single-quote', '--spaces-inside-table-braces'
          },
          stdin = true
        }
      end
    }
  }
})

cmd 'nnoremap <Leader>cf :Format<cr>'
