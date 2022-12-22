return require("packer").startup(function(use)
  -- Package manager
  use("wbthomason/packer.nvim")

  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }

  -- Syntax highlighting
  use({
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  })

  -- Formatter
  use("jose-elias-alvarez/null-ls.nvim")
  use({ "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*" })

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
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

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
