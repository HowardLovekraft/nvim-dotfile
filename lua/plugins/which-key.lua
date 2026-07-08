vim.keymap.set("n", "<leader>?",
  function()
    require("which-key").show { global = false }
  end,
  {
    noremap = true,
    silent = true,
    desc = "Buffer Local Keymaps (which-key)",
  }
)
