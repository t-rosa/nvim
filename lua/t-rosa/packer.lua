vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  -- Package manager
  use("wbthomason/packer.nvim")

  -- LSP manager
  use("williamboman/mason.nvim")
  use("williamboman/mason-lspconfig.nvim")

  -- LSP
  use("neovim/nvim-lspconfig")

  -- Completion
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-vsnip")
  use("hrsh7th/vim-vsnip")

  -- Syntax highlighting
  use({
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  })

  -- Formatter
  use("jose-elias-alvarez/null-ls.nvim")
  use({"L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*"})

  -- Explorer
  use({
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
  })

  -- Files finder
  use({
    "nvim-telescope/telescope.nvim",
    requires = { { "nvim-lua/plenary.nvim" } },
  })
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- Surround
  use("tpope/vim-surround")

  -- Easy jump
  use({
    "phaazon/hop.nvim",
    branch = "v2",
  })

  -- Terminal toggle
  use({ "akinsho/toggleterm.nvim", tag = "*" })

  -- Auto close pairs
  use("windwp/nvim-autopairs")

  -- Comment
  use("numToStr/Comment.nvim")
  use("JoosepAlviste/nvim-ts-context-commentstring")

  -- Colorscheme
  use("catppuccin/nvim")
end)
