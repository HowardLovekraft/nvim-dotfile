local utils = require("utils")
local Commands = utils.Commands

local lazy = require("lz.n")
local PLUGIN = "which-key"

lazy.load {
  PLUGIN,
  cmd = Commands.WhichKey,
  after = function()
    vim.keymap.set("n", "<leader>?",
      function()
        require(PLUGIN).show { global = false }
      end,
      {
        noremap = true,
        silent = true,
        desc = "Buffer Local Keymaps (which-key)",
      }
    )
  end
}

