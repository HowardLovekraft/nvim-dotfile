-- Открывает Neotree
vim.keymap.set(
  "n", "<Leader>e", "<cmd>Neotree<CR>",
  { noremap = true, silent = true, desc = "Show Neotree" }
)

-- Кеймапы для LSP
vim.keymap.set(
  "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>",
  { desc = "Go to Definition of the name under cursor" }
)
vim.keymap.set(
  "n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>",
  { desc = "Show inline diagnostic message" }
)
-- Дефолтный кеймап
vim.keymap.set(
  "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>",
  { desc = "Open popup with hover documentation" }
)

-- Более удобный выход из Terminal Mode
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { desc = 'Exit terminal mode' })


-- Кеймап на формат
vim.keymap.set(
  "n", "<Leader>fo", "<cmd>lua require('conform').format()<CR>",
  { desc = "Format the buffer via conform" }
)

-- Удобный выход из Terminal Mode
local opts = { noremap = true, silent = true }
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", opts)
