--- Returns a GitHub repository's URL
---@param url string Repository name
---@return string
local function gh_link(url)
  return "https://github.com/" .. url
end


local plugins = {
  -- Поддержка treesitter
  gh_link("nvim-treesitter/nvim-treesitter"),
  -- Статус-лайн внизу
  gh_link("nvim-lualine/lualine.nvim"),
  -- Менеджер LSP-серверов
  gh_link("mason-org/mason.nvim"),
  -- Базовые конфиги для LSP-серверов
  gh_link("neovim/nvim-lspconfig"),
  -- Связка nvim-lspconfig и Mason
  gh_link("mason-org/mason-lspconfig.nvim"),
  -- Fuzzy search
  gh_link("ibhagwan/fzf-lua"),
  gh_link("windwp/nvim-autopairs"),
  -- Подсказки от LSP
  {
    src = gh_link("saghen/blink.cmp"),
    version = vim.version.range("^1")
  },
  -- Красивый менеджер файлов
  {
    src = gh_link('nvim-neo-tree/neo-tree.nvim'),
    version = vim.version.range('3')
  },
  -- Помогает искать keybinds
  gh_link("folke/which-key.nvim"),
  -- Зависимости neo-tree
  gh_link("MunifTanjim/nui.nvim"),
  gh_link("nvim-lua/plenary.nvim"),
  gh_link("nvim-mini/mini.icons"),
  -- Зависимость dashboard-nvim и neo-tree
  {
    src = gh_link("nvim-tree/nvim-web-devicons"),
    version = vim.version.range('^3.3')
  },
  -- Отдельный форматтер
  gh_link("stevearc/conform.nvim")
}

-- Установка плагинов
vim.pack.add(plugins, { load = nil })
vim.pack.add {
  gh_link("lumen-oss/lz.n") -- Lazy-загрузчик плагинов
}

-- Lazy-настройки плагинов
require("plugins.treesitter")
require("plugins.lualine")
-- nvim-lspconfig + mason.nvim + mason-lspconfig
require("plugins.mason-lspconfig")
require("plugins.conform")
require("plugins.neotree")
require("plugins.blink-cmp")
require("plugins.which-key")
require("plugins.fzf-lua")
require("plugins.nvim-autopairs")

