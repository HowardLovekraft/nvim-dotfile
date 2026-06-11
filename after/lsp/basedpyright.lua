local function on_attach_basedpyright(client, _)
  client.server_capabilities.hoverProvider = true
end

return {
  on_attach = on_attach_basedpyright,
	settings = {
		basedpyright = {
      -- Ruff handles import organizing
      disableOrganizeImports = true,
			analysis = {
        useLibraryCodeForTypes = true,
        diagnosticSeverityOverrides = {
          reportUnusedCallResult = "none",
          reportUnusedVariable = "warning"
        },
        typeCheckingMode = "recommended",
				diagnosticMode = 'openFilesOnly',
				autoSearchPaths = true,
			},
		},
	},
}
