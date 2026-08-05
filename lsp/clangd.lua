return {
	cmd = {
		'clangd' ,
		'--background-index',
	},
	filetypes = { 'c', 'cpp', 'cuda' },
	root_markers = {
		'.clangd',
		'.clangd-tidy',
		'.clangd-format',
		{ 'compile_commands.json', 'build/compile_commands.json' },
		'.git',
	},
	capabilities = {
		textDocument = {
			completion = {
				editsNearCursor = true,
			},
		},
		offsetEncoding = { 'utf-8', 'utf-16' },
	}

}
