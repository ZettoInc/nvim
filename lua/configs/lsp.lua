local lsp = require("lspconfig")
local mason = require("mason")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

mason.setup {}
lsp.tsserver.setup {
	capabilities = capabilities,
}
lsp.pyright.setup {
	capabilities = capabilities,
}
lsp.html.setup {
	capabilities = capabilities,
}
lsp.cssls.setup {
	capabilities = capabilities
}
-- lsp.pylsp.setup {}
lsp.emmet_ls.setup {
	capabilities = capabilities
}
