require('lspconfig').elixirls.setup{
  cmd = {'/home/tunkshif/.local/share/elixir-ls/language_server.sh'};
  on_attach = require('config.lsp').on_attach
}

