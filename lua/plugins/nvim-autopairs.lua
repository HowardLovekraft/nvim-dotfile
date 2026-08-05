local utils = require("utils")
local Events = utils.Events

local lazy = require("lz.n")
local PLUGIN = "nvim-autopairs"

lazy.load {
  PLUGIN,
  event = { Events.InsertEnter },
  after = function()
    require(PLUGIN).setup()
  end
}
