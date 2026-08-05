-- Кеймапы для LSP
vim.keymap.set(
  "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>",
  { desc = "Go to Definition of the name under cursor" }
)
vim.keymap.set(
  "n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>",
  { desc = "Show inline diagnostic message" }
)

-- Более удобный выход из Terminal Mode
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { desc = 'Exit terminal mode' })


-- Кеймап на формат
vim.keymap.set(
  "n", "<Leader>fo", "<cmd>lua require('conform').format()<CR>",
  { desc = "Format the buffer via conform" }
)
