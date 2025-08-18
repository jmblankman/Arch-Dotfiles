-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

local plugins = {

	-- Themes:
	'rebelot/kanagawa.nvim',

	'nvim-tree/nvim-tree.lua',
	'akinsho/toggleterm.nvim',
	'stevearc/oil.nvim',
	'Vigemus/iron.nvim',
	'norcalli/nvim-colorizer.lua',
	'nvim-treesitter/nvim-treesitter',
	'christoomey/vim-tmux-navigator',

	{
		'nvim-lualine/lualine.nvim',
		-- Devicons is optional and requires a Nerd Font
		dependencies = { { 'nvim-tree/nvim-web-devicons' } } 
	},
	{
		'nvim-telescope/telescope.nvim', 
		tag = '0.1.2',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
}

local opts = {}

require("lazy").setup(plugins, opts)
