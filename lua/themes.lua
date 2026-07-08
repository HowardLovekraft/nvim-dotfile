assert(
	package.loaded["plugins"],
	"Load themes after plugins!"
)

---@enum Theme
local Theme = {
  AYU = "ayu",
  TOKYONIGHT = "tokyonight",
  ONEDARK = "onedark"
}
local themes = {
	-- Темы редактора
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

