local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require('lspconfig/configs').emmet_ls = {
  default_config = {
    cmd = { 'emmet-ls', '--stdio' },
    filetypes = { 'html', 'css' },
    root_dir = function(f) return vim.loop.cwd() end,
    settings = {}
  }
}

require('lspconfig').emmet_ls.setup {
  on_attach = require('config.lsp').on_attach,
  capabilities = capabilities
}
