vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Package manager
  use 'wbthomason/packer.nvim'

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
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Formatter
  use 'jose-elias-alvarez/null-ls.nvim'

  -- Explorer
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
    tag = 'nightly'
  }

  -- Files finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- Surround
  use 'tpope/vim-surround'

  -- Easy jump
  use {
    'phaazon/hop.nvim',
    branch = 'v2'
  }

  -- Terminal toggle
  use { 'akinsho/toggleterm.nvim', tag = '*' }

  -- Auto close pairs
  use 'windwp/nvim-autopairs'

  -- Comment
  use 'numToStr/Comment.nvim'
  use 'JoosepAlviste/nvim-ts-context-commentstring'

  -- Colorscheme
  use 'catppuccin/nvim'

  -- Status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { { 'nvim-tree/nvim-web-devicons' } }
  }

  -- UI
  use 'stevearc/dressing.nvim'
end)
