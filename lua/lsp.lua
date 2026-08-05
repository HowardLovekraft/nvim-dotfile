local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.general.positionEncodings = { "utf-16" }

-- Фикс для парной работы basedpyright + ruff
vim.lsp.config('basedpyright', {
	capabilities = capabilities,
})

vim.lsp.config('ruff', {
  capabilities = capabilities,
})

-- Включаем inline варнинги и ошибки
vim.diagnostic.config { virtual_text = true }

