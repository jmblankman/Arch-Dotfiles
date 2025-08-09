vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup()

-- Old Keybinding:
-- vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
vim.api.nvim_set_keymap('n', '<leader>f', ':NvimTreeFindFileToggle<CR>', { noremap = true})
