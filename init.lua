print("My Neovim setup!")

require("plugins")
require("config")
require("keymap")
require("lsp")
require("autocmd")

vim.cmd.colorscheme "tokyonight"
