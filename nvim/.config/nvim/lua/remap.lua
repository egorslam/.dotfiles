vim.g.mapleader = " "

vim.api.nvim_set_keymap('n', ';', ':', {})
vim.api.nvim_set_keymap('n', 'tn', ':tabnew<CR>', {})

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

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fs", builtin.grep_string, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.oldfiles, {})
vim.keymap.set("n", "<leader>fz", builtin.current_buffer_fuzzy_find, {})
