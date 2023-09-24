require('nvim-treesitter.configs').setup {
  ensure_installed =  { "ruby", "javascript", "lua" },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
