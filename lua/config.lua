vim.opt.autoindent = true  -- Автоотступ
vim.opt.clipboard = "unnamedplus"  -- Общий буфер обмена с ОС
vim.opt.colorcolumn = "80"
vim.opt.nu = true  -- Номера строк
vim.opt.relativenumber = true  -- Относительные номера строк
vim.opt.scrolloff = 6
vim.opt.smartindent = true  -- Авто доп.отступ после if/while
vim.opt.termguicolors = true  -- 24-bit цвета
vim.opt.winborder = "rounded"

-- Дефолтные значения отступов
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

-- Клавиша-лидер
vim.g.mapleader = " "

-- Отключаем Node.js and Perl провайдеров
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0

-- Получаем провайдера Python
local home = vim.fn.expand('~/')
local python_venv = home .. '.virtualenvs/neovim/'
if vim.fn.has('win32') then
	vim.g.python3_host_prog = python_venv .. 'Scripts/python.exe'
else  -- Linux :)
	vim.g.python3_host_prog = python_venv .. 'bin/python'
end
