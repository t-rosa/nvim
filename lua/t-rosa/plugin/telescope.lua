return {
  keys = {
    {
      '<leader>ff', "<cmd>Telescope find_files<cr>"
    },
    {
      '<leader>fg', "<cmd>Telescope live_grep<cr>"
    },
    {
      '<leader>fb', "<cmd>Telescope buffers<cr>"
    }
  },
  config = function()
    local telescope = require("telescope");
    local actions = require("telescope.actions");

    telescope.setup({
      defaults = {
        file_ignore_patterns = {
          ".git/",
          "node_modules/*",
        },
        mappings = {
          i = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
            ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
          },
          n = {
            ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
            ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
          },
        },
      },
      pickers = {
        find_files = {
          theme = "dropdown",
          previewer = false,
        },
        buffers = {
          theme = "dropdown",
          previewer = false,
        },
      },
    })

    telescope.load_extension("fzf");

  end
}
