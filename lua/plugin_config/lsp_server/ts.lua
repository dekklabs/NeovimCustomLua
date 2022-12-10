--require'lspconfig'.tsserver.setup{}

require'lspconfig'.tsserver.setup{
  on_attach = on_attach,
  filestypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" },
  capabilities = capabilities
}
