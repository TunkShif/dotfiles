require('lspconfig').tsserver.setup{
  on_attach = require('config.lsp').on_attach
}
