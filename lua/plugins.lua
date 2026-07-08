---@enum Commands
local Commands = {
  BufNewFile = "BufNewFile",
  BufReadPre = "BufReadPre",
  InsertEnter = "InsertEnter",
  VimEnter = "VimEnter",
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
>>>>>>> Stashed changes
}


vim.pack.add {
  -- Lazy-загрузка плагинов
<<<<<<< Updated upstream
  "https://github.com/lumen-oss/lz.n"
}

vim.pack.add(plugin_list, { load = require("lz.n").load })

=======
  "https://github.com/lumen-oss/lz.n",
}
vim.pack.add(plugins, { load = nil })

require("lz.n").load {
  {
    "lualine.nvim",
    lazy = false,
    after = function()
      require("lualine").setup {
        sections = {
          lualine_x = {"diagnostics", "filetype"},
          lualine_y = {},
        }
      }
    end
  },
  {
    "nvim-treesitter",
    event = { Commands.BufNewFile, Commands.BufReadPre }
  },
  {
    "mason.nvim",
    event = { Commands.BufNewFile, Commands.BufReadPre },
    after = function()
      require("mason").setup()
    end,
    priority = 55,
  },
  {
    "nvim-lspconfig",
    event = { Commands.BufNewFile, Commands.BufReadPre },
    priority = 55,
  },
  {
    "mason-lspconfig",
    event = { Commands.BufNewFile, Commands.BufReadPre },
    after = function()
      require("mason-lspconfig").setup()
    end
  },
  {
    "blink.cmp",
    event = { Commands.InsertEnter },
    after = function()
      require('plugins.blink-cmp')
    end
  },
  {
    "neo-tree",
    event = { Commands.VimEnter },
    after = function()
      require("neo-tree").setup {
        window = { position = "right" },
        close_if_last_window = true,
      }
    end
  },
}

