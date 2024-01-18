return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- disable a keymap
      keys[#keys + 1] = { "]d", false }
      keys[#keys + 1] = { "[d", false }
      -- add a keymap
      keys[#keys + 1] = { "<leader>dn", vim.diagnostic.goto_next }
      keys[#keys + 1] = { "<leader>dp", vim.diagnostic.goto_prev }
    end,
  },
}
