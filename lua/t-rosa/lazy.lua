local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  {
    'VonHeikemen/lsp-zero.nvim',
    event = "BufReadPre",
    config = require("t-rosa.plugin.lsp").config,
    dependencies = {
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
  },

  -- Syntax highlight
  {
    "nvim-treesitter/nvim-treesitter",
    config = require("t-rosa.plugin.treesitter").config,
    event = "BufReadPre",
    build = ":TSUpdate",
  },

  -- Formatter
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = require("t-rosa.plugin.null-ls").config,
    keys = "<leader>p"
  },

  -- Explorer
  {
    "nvim-neo-tree/neo-tree.nvim",
    config = require("t-rosa.plugin.neo-tree").config,
    branch = "v2.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
  },

  -- Files finder
  {
    "nvim-telescope/telescope.nvim",
    config = require("t-rosa.plugin.telescope").config,
    dependencies = { { "nvim-lua/plenary.nvim" } },
  },
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },

  -- Surround
  { "tpope/vim-surround" },

  -- Easy jump
  {
    "phaazon/hop.nvim",
    config = require("t-rosa.plugin.hop").config,
    branch = "v2",
  },

  -- Terminal toggle
  { "akinsho/toggleterm.nvim", version = "*",
    config = require("t-rosa.plugin.toggleterm").config,
  },

  -- Auto close pairs
  { 
    "windwp/nvim-autopairs",
    config = require("t-rosa.plugin.autopairs").config,
  },

  -- Comment
  { 
    "numToStr/Comment.nvim",
    config = require("t-rosa.plugin.comment").config,
  },
  { "JoosepAlviste/nvim-ts-context-commentstring" },

  -- Colorscheme
  { 
    "catppuccin/nvim",
    config = require("t-rosa.plugin.colorscheme").config,
  },
})
