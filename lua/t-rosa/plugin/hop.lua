return {
  keys = {
    { '<leader>hc', "<cmd>HopChar1<cr>" }
  },
  config = function()
    local hop = require("hop")
    hop.setup()
  end
}
