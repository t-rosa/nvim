return {
  "folke/edgy.nvim",
  opts = {
    right = {
      {
        title = "Neo-Tree",
        ft = "neo-tree",
        size = { width = 35 },
      },
      "neo-tree",
    },
    keys = {
      -- increase width
      ["<c-Left>"] = function(win)
        win:resize("width", 2)
      end,
      -- decrease width
      ["<c-Right>"] = function(win)
        win:resize("width", -2)
      end,
    },
    left = {},
    animate = {
      enabled = false,
    },
  },
}
