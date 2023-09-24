-- Nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
  },
  renderer = {
    group_empty = false,
    icons = {
      show = {
        file = false,
        folder = false,
        folder_arrow = false,
        git = false,
        diagnostics = false,
        modified = false,
      },
    },
  },
  actions = {
    open_file = {
      quit_on_open = true
    }
  },
  filters = {
    dotfiles = false,
  },
})
