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
    event = "BufReadPre",
    config = require("t-rosa.plugin.treesitter").config,
    build = ":TSUpdate",
  },

  -- Formatter
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = require("t-rosa.plugin.null-ls").config,
    keys = require("t-rosa.plugin.null-ls").keys
  },

  -- Explorer
  {
    "nvim-neo-tree/neo-tree.nvim",
    config = require("t-rosa.plugin.neo-tree").config,
    keys = require("t-rosa.plugin.neo-tree").keys,
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
    keys = require("t-rosa.plugin.telescope").keys,
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
  },

  -- Surround
  { "tpope/vim-surround" },

  -- Easy jump
  {
    "phaazon/hop.nvim",
    branch = "v2",
    keys = require("t-rosa.plugin.hop").keys,
    config = require("t-rosa.plugin.hop").config,
  },

  -- Terminal toggle
  {
    "akinsho/toggleterm.nvim", version = "*",
    config = require("t-rosa.plugin.toggleterm").config,
    keys = require("t-rosa.plugin.toggleterm").keys,
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
    keys = require("t-rosa.plugin.comment").keys,
  },
  { "JoosepAlviste/nvim-ts-context-commentstring", event = "BufReadPre" },

  -- Colorscheme
  {
    "catppuccin/nvim",
    config = require("t-rosa.plugin.colorscheme").config,
  },
})
