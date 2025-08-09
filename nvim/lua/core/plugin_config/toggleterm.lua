require("toggleterm").setup{
   size = 15
}

-- Open / close Toggleterm with <leader>t
vim.api.nvim_set_keymap('n', '<leader>t', ':ToggleTerm<CR>', { noremap = true })
vim.api.nvim_set_keymap('t', '<leader>t', '<C-\\><C-n>:ToggleTerm<CR>', { noremap = true })

-- Escape insert mode with <ESC>
vim.api.nvim_set_keymap('t', '<ESC>', '<C-\\><C-n>', { noremap = true })

-- Toggle Nvim-Tree with <leader>f
vim.api.nvim_set_keymap('t', '<leader>f', '<C-\\><C-n>:NvimTreeFindFileToggle<CR>', { noremap = true})
