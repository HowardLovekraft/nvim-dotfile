local kmap = vim.keymap.set


-- Кеймап для Neotree
kmap("n", "<leader>e", "<cmd>Neotree dir=./ toggle=true<CR>",
  { noremap = true, silent = true }
)

-- Удобный выход из Terminal Mode
kmap('t', '<Esc>', [[<C-\><C-n>]], { desc = 'Exit terminal mode' })

-- Кеймапы для fzf
local fzf = require("fzf-lua")
kmap("n", "<leader>fz", fzf.files, { desc = "Fuzzy search in project" })
kmap("n", "<leader>/", fzf.live_grep, { desc = "Fuzzy live grep" })

-- Общие кеймапы LSP
kmap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>",
  {
    noremap = true,
    silent = true,
    desc = "Go to Definition"
  }
)
kmap("n", "<Leader>fo", "<cmd>lua vim.lsp.buf.format()<CR>",
  {
    noremap = true,
    silent = true,
    desc = "Format file"
  }
)

-- Кеймап для which-key
kmap("n", "<leader>?",
  function()
    require("which-key").show { global = false }
  end,
  {
    noremap = true,
    silent = true,
    desc = "View Local Keymaps (which-key)",
  }
)

-- Дефолтные кеймапы:
-- ("n", "gt", "<cmd>tabnext<CR>", opts) -- Перейти на следующий таб
-- ("n", "gT", "<cmd>tabprev<CR>", opts) -- Перейти на предыдущий таб

