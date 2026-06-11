print("My Neovim setup!")

require("plugins")  -- Plugin list and settings
require("lsp")      -- LSP settings (more - at after/lsp)
require("config")   -- Neovim flags
require("keymap")   -- Keymaps for plugins' actions
require("autocmd")  -- idk :(

	
vim.cmd.colorscheme "ayu"
