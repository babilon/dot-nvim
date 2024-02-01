local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	lsp_zero.default_keymaps({buffer=bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {'pyright', 'clangd', 'cpplint', 'bashls', 'autotools_ls', 'als', 'cpplint'},
	handlers = {
		lsp_zero.default_setup,
		--example_server = lsp_zero.noop,
	},
})
