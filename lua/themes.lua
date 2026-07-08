assert(
	package.loaded["lz.n"],
	"Load lazy-loading lib (lz.n) before themes!"
)

---@enum Theme
local Theme = {
  AYU = "ayu",
  TOKYONIGHT = "tokyonight",
  ONEDARK = "onedark"
}

-- Темы редактора
local themes = {
	"https://github.com/folke/tokyonight.nvim",
	"https://github.com/shatur/neovim-ayu",
	"https://github.com/navarasu/onedark.nvim",
}

vim.pack.add(themes, { load = nil })

require("lz.n").load {
  {
    "neovim-ayu",
    colorscheme = Theme.AYU
  },
  {
    "tokyonight.nvim",
    colorscheme = Theme.TOKYONIGHT
  },
  {
    "onedark.nvim",
    colorscheme = Theme.ONEDARK
  }
}

-- Установка темы
vim.cmd.colorscheme(Theme.AYU)
