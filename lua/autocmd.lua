local ag = vim.api.nvim_create_augroup
local new_autocmd = vim.api.nvim_create_autocmd
local highlight_group = ag('YankHighlight', { clear = true })

-- Выделенный текст 'вспыхивает' после копирования
new_autocmd('TextYankPost', {
    pattern = '*',
    callback = function()
        vim.hl.hl_op({ timeout = 170 })
    end,
    group = highlight_group,
})
