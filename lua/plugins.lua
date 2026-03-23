vim.pack.add({
	-- Тема редактора
	{ src = "https://github.com/folke/tokyonight.nvim" },
	-- Поддержка treesitter
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
	-- Менеджер LSP-серверов
	{ src = "https://github.com/nvim-lualine/lualine.nvim" },
	-- Статус-лайн внизу
	{ src = "https://github.com/mason-org/mason.nvim" },
	-- Fuzzy search
    { src = "https://github.com/ibhagwan/fzf-lua" },
	-- Подсказки от LSP
    { src = "https://github.com/saghen/blink.cmp", version = vim.version.range("^1") },
	-- Красивый менеджер файлов
	{ src = 'https://github.com/nvim-neo-tree/neo-tree.nvim', version = vim.version.range('3') },
	-- Автозакрытие скобок, кавычек
	{ src = "https://github.com/windwp/nvim-autopairs" },
	-- Зависимости neo-tree
	"https://github.com/nvim-lua/plenary.nvim",
	"https://github.com/MunifTanjim/nui.nvim",
	-- Зависимость dashboard-nvim и neo-tree
	"https://github.com/nvim-tree/nvim-web-devicons",
})

require("tokyonight").setup()
require("mason").setup()
require("nvim-autopairs").setup()

require("lualine").setup {
	sections = {
		lualine_x = {"diagnostics", "filetype"},
		lualine_y = {},
	},
}

local actions = require('fzf-lua.actions')
require('fzf-lua').setup {
    winopts = { backdrop = 85 },
    keymap = {
        builtin = {
            ["<C-f>"] = "preview-page-down",
            ["<C-b>"] = "preview-page-up",
            ["<C-p>"] = "toggle-preview",
        },
        fzf = {
            ["ctrl-a"] = "toggle-all",
            ["ctrl-t"] = "first",
            ["ctrl-g"] = "last",
            ["ctrl-d"] = "half-page-down",
            ["ctrl-u"] = "half-page-up",
        }
    },
    actions = {
        files = {
            ["ctrl-q"] = actions.file_sel_to_qf,
            ["ctrl-n"] = actions.toggle_ignore,
            ["ctrl-h"] = actions.toggle_hidden,
            ["enter"]  = actions.file_edit_or_qf,
        }
    }
}

require('blink.cmp').setup({
    fuzzy = { implementation = 'prefer_rust_with_warning' },
    signature = { enabled = true },
    keymap = {
        preset = "default",
        ["<C-space>"] = {},
        ["<C-p>"] = {},
        ["<Tab>"] = {},
        ["<S-Tab>"] = {},
        ["<C-y>"] = { "show", "show_documentation", "hide_documentation" },
        ["<C-n>"] = { "select_and_accept" },
        ["<C-k>"] = { "select_prev", "fallback" },
        ["<C-j>"] = { "select_next", "fallback" },
        ["<C-b>"] = { "scroll_documentation_down", "fallback" },
        ["<C-f>"] = { "scroll_documentation_up", "fallback" },
        ["<C-l>"] = { "snippet_forward", "fallback" },
        ["<C-h>"] = { "snippet_backward", "fallback" },
        -- ["<C-e>"] = { "hide" },
    },

    appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = "normal",
    },

    completion = {
        documentation = {
            auto_show = true,
            auto_show_delay_ms = 200,
        }
    },

    cmdline = {
        keymap = {
            preset = 'inherit',
            ['<CR>'] = { 'accept_and_enter', 'fallback' },
        },
    },

    sources = { default = { "lsp" } }
})

require("neo-tree").setup({
	close_if_last_window = true,
})

