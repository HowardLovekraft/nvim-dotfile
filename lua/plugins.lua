---@enum Events
local Events = {
  BufNewFile = "BufNewFile",
  BufReadPre = "BufReadPre",
  InsertEnter = "InsertEnter",
  VimEnter = "VimEnter",
}

---@enum Commands
local Commands = {
  FzfLua = "FzfLua",
  WhichKey = "WhichKey"
}


local plugins = {
  -- Поддержка treesitter
  "https://github.com/nvim-treesitter/nvim-treesitter",
  -- Статус-лайн внизу
  "https://github.com/nvim-lualine/lualine.nvim",
  -- Менеджер LSP-серверов
  "https://github.com/mason-org/mason.nvim",
  -- Базовые конфиги для LSP-серверов
  "https://github.com/neovim/nvim-lspconfig",
  -- Связка nvim-lspconfig и Mason
  "https://github.com/mason-org/mason-lspconfig.nvim",
  -- Fuzzy search
  "https://github.com/ibhagwan/fzf-lua",
  "https://github.com/windwp/nvim-autopairs",
  -- Подсказки от LSP
  {
    src = "https://github.com/saghen/blink.cmp",
    version = vim.version.range("^1")
  },
  -- Красивый менеджер файлов
  {
    src = 'https://github.com/nvim-neo-tree/neo-tree.nvim',
    version = vim.version.range('3')
  },
  -- Помогает искать keybinds
  "https://github.com/folke/which-key.nvim",
  -- Зависимости neo-tree
  "https://github.com/MunifTanjim/nui.nvim",
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/nvim-mini/mini.icons",
  -- Зависимость dashboard-nvim и neo-tree
  {
    src = "https://github.com/nvim-tree/nvim-web-devicons",
    version = vim.version.range('^3.3')
  },
}


vim.pack.add {
  -- Lazy-загрузка плагинов
  "https://github.com/lumen-oss/lz.n",
}
vim.pack.add(plugins, { load = nil })

require("lz.n").load {
  {
    "lualine.nvim",
    lazy = false,
    after = function()
      require('plugins.lualine')
    end
  },
  {
    "nvim-treesitter",
    event = { Events.BufNewFile, Events.BufReadPre }
  },
  {
    "mason.nvim",
    event = { Events.VimEnter },
    after = function()
      require("mason").setup()
    end,
    priority = 52,
  },
  {
    "nvim-lspconfig",
    event = { Events.VimEnter },
    priority = 52,
  },
  {
    "mason-lspconfig",
    event = { Events.BufNewFile, Events.BufReadPre },
    after = function()
      require("plugins.mason-lspconfig")
    end
  },
  {
    "blink.cmp",
    event = { Events.InsertEnter },
    after = function()
      require('plugins.blink-cmp')
    end
  },
  {
    "neo-tree",
    event = { Events.VimEnter },
    after = function()
      require("neo-tree").setup {
        window = { position = "right" },
        close_if_last_window = true,
      }
    end
  },
  {
    "which-key",
    cmd = Commands.WhichKey,
    after = function()
      require('plugins.which-key')
    end
  },
  {
    "fzf-lua",
    cmd = Commands.FzfLua,
    after = function()
      require('plugins.fzf-lua')
    end
  },
  {
    "nvim-autopairs",
    event = { Events.InsertEnter },
    after = function()
      require("nvim-autopairs").setup()
    end
  }
}

