local utils = require("utils")
local Commands = utils.Commands

local lazy = require("lz.n")
local PLUGIN = "fzf-lua"


local function after()
  local fzf = require(PLUGIN)
  local actions = require('fzf-lua.actions')

  -- Кеймапы
  vim.keymap.set("n", "<leader>fz", fzf.files)
  vim.keymap.set("n", "<leader>/", fzf.live_grep)

  -- Сетап
  fzf.setup {
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
end


lazy.load {
  PLUGIN,
  cmd = Commands.FzfLua,
  after = after
}
