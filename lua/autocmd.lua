local ag = vim.api.nvim_create_augroup
local new_autocmd = vim.api.nvim_create_autocmd
local highlight_group = ag('YankHighlight', { clear = true })

new_autocmd('TextYankPost', {
    pattern = '*',
    callback = function()
        vim.hl.on_yank({ timeout = 170 })
    end,
    group = highlight_group,
})
