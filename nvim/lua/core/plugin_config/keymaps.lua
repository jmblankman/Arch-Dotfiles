-- Improved window navigation
-- vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true })
-- vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true })
-- vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true })
-- vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true })

-- Resize with arrows
vim.api.nvim_set_keymap("n", "<C-Up>", ":resize +2<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-Down>", ":resize -2<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-Left>", ":resize +2<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-Right>", ":resize -2<CR>", { noremap = true })

-- Improved terminal application
vim.api.nvim_set_keymap("t", "<C-h>", "<C-\\><C-N><C-h>", {})
vim.api.nvim_set_keymap("t", "<C-j>", "<C-\\><C-N><C-j>", {})
vim.api.nvim_set_keymap("t", "<C-k>", "<C-\\><C-N><C-k>", {})
vim.api.nvim_set_keymap("t", "<C-l>", "<C-\\><C-N><C-l>", {})

-- Remap leader
vim.g.mapleader = ";"
