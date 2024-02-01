require('lsp-zero')
-- https://luals.github.io/#neovim-install
require('lspconfig').lua_ls.setup({})
require('lspconfig').ccls.setup({})
-- don't copy/paste this if you don't know what is `lua_ls`.
-- yes, lsp-zero has changed since ThePrimeagen released his video "0 to LSP".
