local lazy = require("lz.n")

-- Кеймапы для fzf
local keymap = lazy.keymap {
  "fzf-lua",
  cmd = "FzfLua",
  after = function()
    require('plugins.fzf-lua')
  end,
}
local fzf = require("fzf-lua")
keymap.set("n", "<leader>fz", fzf.files)
keymap.set("n", "<leader>/", fzf.live_grep)


-- Кеймап для which-key
keymap = lazy.keymap {
  "which-key",
  cmd = "WhichKey"
}
keymap.set("n", "<leader>?",
  function()
    require("which-key").show { global = false }
  end,
  {
    noremap = true,
    silent = true,
    desc = "Buffer Local Keymaps (which-key)",
  }
)


-- Кеймапы для LSP
local opts = { noremap = true, silent = true }

vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
vim.keymap.set("n", "<Leader>fo", "<cmd>lua vim.lsp.buf.format()<CR>", opts)

-- Более удобный выход из Terminal Mode
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { desc = 'Exit terminal mode' })

