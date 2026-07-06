local start_time = vim.uv.hrtime()

require("plugins")  -- Plugin list
require("config")   -- Neovim flags
require("autocmd")  -- Autocommands
require("setups")   -- Plugin settings
require("lsp")      -- LSP settings (more - at after/lsp)
require("keymap")   -- Keymaps for plugins' actions

local end_time = vim.uv.hrtime()

-- Приветственное сообщение
print(
  string.format(
    "My Neovim setup! Start up time: %.2f ms",
    (end_time - start_time) / 1e6
  )
)

