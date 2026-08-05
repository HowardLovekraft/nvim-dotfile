local function on_attach(client, _)
  client.server_capabilities.hoverProvider = true
  client.server_capabilities.documentFormattingProvider = false
end

return {
  on_attach = on_attach,
	settings = {
		basedpyright = {
      -- Организация импорта - за Ruff
      disableOrganizeImports = true,
			analysis = {
        -- Весь анализ - за Ruff
        ignore = { "*" },
      },
		},
	},
}
