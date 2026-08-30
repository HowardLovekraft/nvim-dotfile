local utils = require("utils")
local Events = utils.Events

local lazy = require("lz.n")
local PLUGIN = "cord"


lazy.load {
  PLUGIN,
  event = { Events.UIEnter },
  after = function()
    require(PLUGIN).setup()
  end
}

