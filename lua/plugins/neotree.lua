local utils = require("utils")
local Events = utils.Events

local lazy = require("lz.n")
local PLUGIN = "neo-tree"

lazy.load {
  PLUGIN,
  event = { Events.VimEnter },
  after = function()
    require(PLUGIN).setup {
      window = { position = "right" },
      close_if_last_window = true,
    }
  end
}
