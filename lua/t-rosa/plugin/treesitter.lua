return {
  config = function ()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      ensure_installed = {
        "lua",
        "markdown",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "prisma",
        "json",
        "scss",
        "astro",
        "dockerfile",
        "graphql",
        "yaml",
        "toml",
      },
      highlight = {
        enable = true,
      },
    })

  end
}
