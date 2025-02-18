require'cmp'.setup {
  sources = {
     { name = 'nvim_lsp' }
  }
}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())
require('lspconfig').gdscript.setup(capabilities)

