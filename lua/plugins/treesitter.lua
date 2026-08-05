local utils = require("utils")
local Events = utils.Events

local lazy = require("lz.n")
local PLUGIN = "nvim-treesitter"


lazy.load {
    PLUGIN,
    event = { Events.BufNewFile, Events.BufReadPre },
    after = function ()
      require(PLUGIN).install { "cpp", "go", "lua", "nasm", "python", "rust" }
    end
}
