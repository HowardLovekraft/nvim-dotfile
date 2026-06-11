vim.pack.add({
	-- Темы редактора
	"https://github.com/folke/tokyonight.nvim",
	"https://github.com/shatur/neovim-ayu",
	"https://github.com/navarasu/onedark.nvim",
	-- Поддержка treesitter
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
	-- Менеджер LSP-серверов
	{ src = "https://github.com/nvim-lualine/lualine.nvim" },
	-- Базовые конфиги для LSP-серверов
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	-- Статус-лайн внизу
	{ src = "https://github.com/mason-org/mason.nvim" },
	-- Fuzzy search
    { src = "https://github.com/ibhagwan/fzf-lua" },
	-- Подсказки от LSP
    { src = "https://github.com/saghen/blink.cmp", version = vim.version.range("^1") },
	-- Красивый менеджер файлов
	{ src = 'https://github.com/nvim-neo-tree/neo-tree.nvim', version = vim.version.range('3') },
	-- Автозакрытие скобок, кавычек
	{ src = "https://github.com/windwp/nvim-autopairs" },
	-- Помогает искать keybinds
	{ src = "https://github.com/folke/which-key.nvim" },
	-- Зависимости neo-tree
	"https://github.com/nvim-lua/plenary.nvim",
	"https://github.com/MunifTanjim/nui.nvim",
	-- Зависимость dashboard-nvim и neo-tree
	{ src = "https://github.com/nvim-tree/nvim-web-devicons", version = vim.version.range('^3.3') },
})

require('onedark').setup{ style = 'darker' }
require('onedark').load()
require("ayu").colorscheme()
require("tokyonight").setup()

require("mason").setup()
require("nvim-autopairs").setup()

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

