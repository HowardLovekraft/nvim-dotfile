vim.pack.add{
	-- Темы редактора
	"https://github.com/folke/tokyonight.nvim",
	"https://github.com/shatur/neovim-ayu",
	"https://github.com/navarasu/onedark.nvim",
}

-- Установка темы
local theme = "ayu"
require(theme).colorscheme()

vim.cmd.colorscheme = theme

