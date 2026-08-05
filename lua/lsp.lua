local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.general.positionEncodings = { "utf-16" }

-- Фикс для парной работы basedpyright + ruff
vim.lsp.config('basedpyright', {
	capabilities = capabilities,
})

vim.lsp.config('ruff', {
  init_options = {
    settings = {
      capabilities = capabilities,
    }
  }
})

-- Включаем inline варнинги и ошибки
vim.diagnostic.config { virtual_text = true }

