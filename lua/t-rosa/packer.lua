vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Package manager
	use 'wbthomason/packer.nvim'

	-- LSP manager
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'

	-- LSP
	use 'neovim/nvim-lspconfig'

	-- Completion
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'

	-- Colorscheme
	use 'catppuccin/nvim'

	-- Finder
	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Status line
	use {
		'nvim-lualine/lualine.nvim',
		requires = { {'kyazdani42/nvim-web-devicons', opt = true} }
	}
end)
