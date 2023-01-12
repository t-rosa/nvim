return {
  keys = { 
    {
      "<leader>p", "<cmd>lua vim.lsp.buf.format()<cr>"
    }
  },
  config = function()
    local null_ls = require("null-ls")

    local formatting = null_ls.builtins.formatting
    local diagnostics = null_ls.builtins.diagnostics

    null_ls.setup({
      debug = false,
      sources = {
        formatting.prettier,
        diagnostics.eslint
      },
    })
  end,
}
