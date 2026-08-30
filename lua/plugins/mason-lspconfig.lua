local utils = require("utils")
local Events = utils.Events

---@enum LangServers
local LangServers = {
  "lua_ls",         -- Lua
  "basedpyright",   -- Python
  "ruff",           -- Python
  "clangd",         -- C++
  "rust_analyzer",  -- Rust
  "tinymist",       -- Typst
}

local lazy = require("lz.n")

lazy.load {
  {
    "mason.nvim",
    event = { Events.BufEnter },
    after = function()
      require("mason").setup()
    end,
  },
  {
    "nvim-lspconfig",
    event = { Events.BufEnter },
  },
  {
    "mason-lspconfig",
    event = { Events.VimEnter },
    after = function()
      require("mason-lspconfig").setup {
        ensure_installed = LangServers
      }
    end,
  },
}

