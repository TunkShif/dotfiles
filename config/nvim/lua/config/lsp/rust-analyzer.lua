local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  }
}

require('lspconfig').rust_analyzer.setup{
  on_attach = require('config.lsp').on_attach,
  capabilities = capabilities
}
