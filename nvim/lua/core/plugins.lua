local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim' if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	-- My plugins here
	-- use 'foo1/bar1.nvim'
	-- use 'foo2/bar2.nvim'

	use {'Vigemus/iron.nvim'}
	use 'rebelot/kanagawa.nvim'
	use 'nvim-tree/nvim-tree.lua'
	use 'stevearc/oil.nvim'
	use "akinsho/toggleterm.nvim"
	use 'norcalli/nvim-colorizer.lua'
	use 'nvim-treesitter/nvim-treesitter'
	use 'christoomey/vim-tmux-navigator'

	use {
		'nvim-lualine/lualine.nvim',
		-- Devicons is optional and requires a Nerd Font
		requires = { { 'nvim-tree/nvim-web-devicons' } } 
	}
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		-- or                          , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require('packer').sync()
	end
end)
