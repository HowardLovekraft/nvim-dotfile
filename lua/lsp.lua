local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.general.positionEncodings = { "utf-16" }

vim.lsp.config('basedpyright', {
	capabilities = capabilities,
})
vim.lsp.config('ruff', {
	capabilities = capabilities,
})

-- LSP providers
vim.lsp.enable {
	"lua_ls",
	"clangd",
	"ruff",
	"basedpyright",
}
-- Add inline errors and warnings
vim.diagnostic.config{ virtual_text = true }

