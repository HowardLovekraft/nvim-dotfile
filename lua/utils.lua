-- Module. M. :)
local M = {}

---@enum Events
M.Events = {
  BufEnter = "BufEnter",
  BufNewFile = "BufNewFile",
  BufReadPre = "BufReadPre",
  InsertEnter = "InsertEnter",
  VimEnter = "VimEnter",
}

M.LZN_DEFAULT_PRIORITY = 50

---@enum Commands
M.Commands = {
  FzfLua = "FzfLua",
  WhichKey = "WhichKey"
}

return M

