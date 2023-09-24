require("catppuccin").setup {
  transparent_background = true,
  integrations = {
    nvimtree = true,
    treesitter = true,
  }
}

vim.cmd.colorscheme "catppuccin"
