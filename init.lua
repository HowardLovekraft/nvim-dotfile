local start_time = vim.uv.hrtime()

require("plugins")  -- Plugin list and settings
require("themes")   -- Theme selection
require("lsp")      -- LSP settings (more - at after/lsp)
require("config")   -- Neovim flags
require("autocmd")  -- Autocommands
require("keymap")   -- Keymaps for plugins' actions

local end_time = vim.uv.hrtime()

-- Приветственное сообщение
print(
  string.format(
    "L0VECR4FT Neovim setup! Start up time: %.2f ms",
    (end_time - start_time) / 1e6
  )
)

