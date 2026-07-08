-- Открывает Neotree
vim.keymap.set("n", "<leader>e", "<Cmd>Neotree<CR>")

-- Кеймапы для fzf
local fzf = require("fzf-lua")
vim.keymap.set("n", "<leader>fs", fzf.files)
vim.keymap.set("n", "<leader>/", fzf.live_grep)

-- Кеймапы для LSP
local opts = { noremap = true, silent = true }

vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
vim.keymap.set("n", "<Leader>fo", "<cmd>lua vim.lsp.buf.format()<CR>", opts)


-- Кеймап для which-key
vim.keymap.set("n", "<leader>?",
  function()
    require("which-key").show { global = false }
  end,
  {
    noremap = true,
    silent = true,
    desc = "Buffer Local Keymaps (which-key)",
  }
)

-- Удобный выход из Terminal Mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", opts)
