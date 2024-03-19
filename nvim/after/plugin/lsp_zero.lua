local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({
	  buffer = bufnr,
  })
end)

require('lspconfig').rust_analyzer.setup({})
require('lspconfig').pylsp.setup({})

lsp_zero.setup_servers({'rust_analyzer', 'pylsp'})

require('mason').setup({})
require('mason-lspconfig').setup({
  handlers = {
    lsp_zero.default_setup,
  },
})
