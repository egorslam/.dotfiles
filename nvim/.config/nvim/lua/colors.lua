require("catppuccin").setup {
  flavour = "macchiato",
  integrations = {
    nvimtree = true,
    treesitter = true,
  }
}

vim.cmd.colorscheme "catppuccin"
