assert(
	package.loaded["lz.n"],
	"Load lazy-loading lib (lz.n) before themes!"
)

--- Returns GitHub repository URL
---@param repo string Repository name
---@return string
local function gh_link(repo)
  return "https://github.com/" .. repo
end

---@enum Theme
local Theme = {
  AYU = "ayu",
  TOKYONIGHT = "tokyonight",
  ONEDARK = "onedark"
}

-- Темы редактора
local themes = {
	gh_link("folke/tokyonight.nvim"),
	gh_link("shatur/neovim-ayu"),
	gh_link("navarasu/onedark.nvim"),
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
