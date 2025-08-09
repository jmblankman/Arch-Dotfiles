-- Improved startup time
vim.loader.enable()

-- Clean up lualine status lines on buffer
vim.opt.laststatus = 3

require("core.plugin_config.kanagawa")
require("core.plugin_config.iron")
require("core.plugin_config.treesitter")
require("core.plugin_config.keymaps")
require("core.plugin_config.lualine")
require("core.plugin_config.nvim-tree")
require("core.plugin_config.oil")
require("core.plugin_config.toggleterm")
require("core.plugin_config.telescope")
require("core.plugin_config.colorizer")
