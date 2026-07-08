-- Кеймапы для LSP
local opts = { noremap = true, silent = true }

vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
vim.keymap.set("n", "<Leader>fo", "<cmd>lua vim.lsp.buf.format()<CR>", opts)

-- Более удобный выход из Terminal Mode
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { desc = 'Exit terminal mode' })

