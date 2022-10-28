vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'catppuccin/nvim'
	use {
  		'nvim-telescope/telescope.nvim',
  		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {
  		'nvim-lualine/lualine.nvim',
  		requires = { {'kyazdani42/nvim-web-devicons', opt = true} }
	}
end)
