local function reload_config()
	-- Clear cache for custom Lua files
	for name, _ in pairs(package.loaded) do
		if name:match("^user") or name:match("^init") then
			package.loaded[name] = nil
		end
	end
	
	dofile(vim.env.MYVIMRC)
	vim.notify("Configuration reloaded!", vim.log.levels.INFO)
end

-- Hot Reload конфига nvim
vim.keymap.set("n", "<leader>sv", reload_config, { desc = "Hot reload neovim's config" })

-- Запускает Netrw
-- vim.keymap.set("n", "<leader>e", "<Cmd>Explore<CR>")

-- Кеймапы для fzf
local fzf = require("fzf-lua")

vim.keymap.set("n", "<leader>f", fzf.files)
vim.keymap.set("n", "<leader>/", fzf.live_grep)

-- Кеймапы для Lua LSP
local opts = { noremap = true, silent = true }

vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
vim.keymap.set("n", "<Leader>fo", "<cmd>lua vim.lsp.buf.format()<CR>", opts)


-- Кеймап для which-key
vim.keymap.set("n", "<leader>?", 
  function()
    require("which-key").show{ global = false }
  end,
  { 
    noremap = true,
	silent = true,
	desc = "Buffer Local Keymaps (which-key)", 
  }
)