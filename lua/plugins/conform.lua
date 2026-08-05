local utils = require("utils")
local Events = utils.Events

local lazy = require("lz.n")

lazy.load {
  "conform.nvim",
  event = { Events.BufEnter },
  after = function()
    require('conform').setup {
      formatters_by_ft = {
        python = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
      },
    }
  end,
}
