---@enum Events
local Events = {
  BufNewFile = "BufNewFile",
  BufReadPre = "BufReadPre",
  VimEnter = "VimEnter",
}

---@enum Commands
local Commands = {
  Neotree = "Neotree",
  Mason = "Mason",
  FzfLua = "FzfLua",
  WhichKey = "WhichKey",
}

---@type lz.n.pack.Spec[]
local plugin_list = {
	-- Базовые конфиги для LSP-серверов
  { src = "https://github.com/neovim/nvim-lspconfig" },
	-- Менеджер LSP-серверов
  { src = "https://github.com/mason-org/mason.nvim" },
  -- Связка nvim-lspconfig и Mason
  { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
	-- Статус-лайн внизу
  { src = "https://github.com/nvim-lualine/lualine.nvim" },
	-- Поддержка treesitter
  {
    src = "https://github.com/nvim-treesitter/nvim-treesitter",
    data = {
      event = Events.VimEnter
    }
  },
	-- Fuzzy search
  {
    src = "https://github.com/ibhagwan/fzf-lua",
    data = {
      cmd = { Commands.FzfLua },
      after = function()
        require('plugins.fzf-lua')
      end
    }
  },
	-- Подсказки от LSP
  {
    src = "https://github.com/saghen/blink.cmp",
    version = vim.version.range("^1"),
    data = {
      event = { "BufNewFile", "BufReadPre" }
    }
  },
	-- Красивый менеджер файлов
	{
    src = 'https://github.com/nvim-neo-tree/neo-tree.nvim', 
    version = vim.version.range('3'),
    data = {
      cmd = { "Neotree" },
      after = function()
        require("neo-tree").setup {
          window = { position = "right" },
          close_if_last_window = true,
        }
      end
    }
  },
	-- Помогает искать keybinds
  {
    src = "https://github.com/folke/which-key.nvim",
    data = {
      event = { Events.BufNewFile, Events.BufReadPre }
    },
    after = function()
      require('which-key').setup()
    end
  },
	-- Зависимости neo-tree
  {
    src = "https://github.com/MunifTanjim/nui.nvim",
    data = {
      cmd = { Commands.Neotree }
    }
  },
  {
    src = "https://github.com/nvim-lua/plenary.nvim",
    data = {
      cmd = { Commands.Neotree }
    }
  },
	-- Зависимость dashboard-nvim и neo-tree
	{
    src = "https://github.com/nvim-tree/nvim-web-devicons", 
    version = vim.version.range('^3.3'),
    data = {
      cmd = { Commands.Neotree }
    }
  },
  -- Темы редактора
  {
    src = "https://github.com/shatur/neovim-ayu",
    data = {
      colorscheme = "ayu"
    }
  },
  { src = "https://github.com/folke/tokyonight.nvim", lazy = true },
  { src = "https://github.com/navarasu/onedark.nvim", lazy = true },
}


vim.pack.add {
  -- Lazy-загрузка плагинов
  "https://github.com/lumen-oss/lz.n"
}

vim.pack.add(plugin_list, { load = require("lz.n").load })

