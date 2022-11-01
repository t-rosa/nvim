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
		requires = { {'nvim-lua/plenary.nvim'} }
	}

    -- Surround
    use 'tpope/vim-surround'

    -- Easy jump
    use {
        'phaazon/hop.nvim',
        branch = 'v2'
    }

	-- Terminal toggle
	use {'akinsho/toggleterm.nvim', tag = '*'}

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
		requires = { {'nvim-tree/nvim-web-devicons'} }
	}
end)
