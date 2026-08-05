require('mason-lspconfig').setup {
  ensure_installed = {
    "lua_ls",        -- Lua
    "basedpyright",  -- Python LSP 
    "ruff",          -- Python linter
    "clangd",        -- C/C++
  },
}
