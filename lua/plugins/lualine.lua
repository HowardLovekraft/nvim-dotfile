local lazy = require("lz.n")

lazy.load {
    "lualine.nvim",
    lazy = false,
    after = function()
      require("lualine").setup {
        sections = {
          lualine_x = {"diagnostics", "filetype"},
          lualine_y = {},
        }
      }
    end,
}

