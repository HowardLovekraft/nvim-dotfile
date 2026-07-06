local new_ag = vim.api.nvim_create_augroup
local new_autocmd = vim.api.nvim_create_autocmd
local FILETYPE = "FileType"

local highlight_group = new_ag('YankHighlight', { clear = true })


-- Выделенный текст 'вспыхивает' после копирования
new_autocmd('TextYankPost', {
    pattern = '*',
    callback = function()
        vim.hl.hl_op({ timeout = 170 })
    end,
    group = highlight_group,
})

-- Настройки отступов для языков
-- Lua + JSON, YAML
new_autocmd(FILETYPE, {
	pattern = { "lua", "json", "yaml" },
	callback = function()
		vim.opt_local.tabstop = 2
		vim.opt_local.shiftwidth = 2
		vim.opt_local.softtabstop = 2
		vim.opt_local.expandtab = true
	end
})
-- C/C++, Python, Rust
new_autocmd(FILETYPE, {
	pattern = { "asm", "nasm", "c", "cpp", "h", "hpp", "python", "rust" },
	callback = function()
		vim.opt_local.tabstop = 4       -- Пробелы в одном табе
		vim.opt_local.shiftwidth = 4    -- Пробелы в автоотступе
		vim.opt_local.softtabstop = 4   -- Пробелы при нажатии Tab
		vim.opt_local.expandtab = true  -- Табы конвертируются в пробелы
	end,
})
-- Go
new_autocmd(FILETYPE, {
	pattern = { "go" },
	callback = function()
		vim.opt_local.tabstop = 4        -- Пробелы в одном табе
		vim.opt_local.shiftwidth = 4     -- Пробелы в автоотступе
		vim.opt_local.softtabstop = 0    -- Пробелы при нажатии Tab
		vim.opt_local.expandtab = false  -- Табы не конвертируются в пробелы
	end
})
