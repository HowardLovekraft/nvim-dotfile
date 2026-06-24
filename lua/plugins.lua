vim.pack.add{
	-- Поддержка treesitter
	"https://github.com/nvim-treesitter/nvim-treesitter",
	-- Статус-лайн внизу
	"https://github.com/nvim-lualine/lualine.nvim",
	-- Базовые конфиги для LSP-серверов
	"https://github.com/neovim/nvim-lspconfig",
	-- Менеджер LSP-серверов
	"https://github.com/mason-org/mason.nvim",
  -- Связка nvim-lspconfig и Mason
  "https://github.com/mason-org/mason-lspconfig.nvim",
	-- Fuzzy search
  "https://github.com/ibhagwan/fzf-lua",
	-- Подсказки от LSP
  { src = "https://github.com/saghen/blink.cmp", version = vim.version.range("^1") },
	-- Красивый менеджер файлов
	{ src = 'https://github.com/nvim-neo-tree/neo-tree.nvim', version = vim.version.range('3') },
	-- Помогает искать keybinds
	"https://github.com/folke/which-key.nvim",
	-- Зависимости neo-tree
	"https://github.com/MunifTanjim/nui.nvim",
	"https://github.com/nvim-lua/plenary.nvim",
	-- Зависимость dashboard-nvim и neo-tree
	{ src = "https://github.com/nvim-tree/nvim-web-devicons", version = vim.version.range('^3.3') },
}


require("mason").setup()
require("mason-lspconfig").setup()

require('plugins.fzf-lua')
require('plugins.blink-cmp')

require("lualine").setup {
	sections = {
		lualine_x = {"diagnostics", "filetype"},
		lualine_y = {},
	},
}

require("neo-tree").setup({
	window = { position = "right" },
	close_if_last_window = true,
})

