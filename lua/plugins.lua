vim.pack.add({
	-- Тема редактора
	{ src = "https://github.com/folke/tokyonight.nvim" },
	-- Поддержка treesitter
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
	-- Менеджер LSP-серверов
	{ src = "https://github.com/nvim-lualine/lualine.nvim" },
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
	-- Зависимости neo-tree
	"https://github.com/nvim-lua/plenary.nvim",
	"https://github.com/MunifTanjim/nui.nvim",
	-- Зависимость dashboard-nvim и neo-tree
	"https://github.com/nvim-tree/nvim-web-devicons",
})

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
	close_if_last_window = true,
})

