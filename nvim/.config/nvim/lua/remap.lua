vim.g.mapleader = " "

-- FZF
vim.api.nvim_set_keymap('n', '<C-P>', ':GFiles<CR>', {})
vim.api.nvim_set_keymap("n", "<leader>rg", ":Rg <C-R><C-W><CR>", {})

-- Vim test
vim.api.nvim_set_keymap('n', '<Leader>t', ':TestNearest<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>T', ':TestFile<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>l', ':TestLast<CR>', {})

-- Fugitive
vim.api.nvim_set_keymap('n', '<Leader>gb', ':Git blame<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>gs', ':Git status<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>gd', ':Git diff<CR>', { noremap = true, silent = true })

-- Nvim-tree
vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle<CR>", {})
vim.api.nvim_set_keymap("n", "<C-n><C-f>", ":NvimTreeFindFile<CR>", {})
