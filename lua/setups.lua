-- Загрузка установленных плагинов
assert(
  package.loaded["plugins"],
  "Load setups before loading `plugins.lua`"
)

require("mason").setup()
require("mason-lspconfig").setup()

require("lualine").setup {
	sections = {
		lualine_x = {"diagnostics", "filetype"},
		lualine_y = {},
	},
}

