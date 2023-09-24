local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Rails support
  { "tpope/vim-rails" },

  -- Git integration
  { "tpope/vim-fugitive" },

  -- Testing
  {
    "vim-test/vim-test",
    config = function ()
      vim.g['test#strategy'] = 'neovim'
      vim.g['test#neovim#term_position'] = 'vert botright 80'
    end,
  },
  { "thoughtbot/vim-rspec" },

  -- Tmux navigation
  { "christoomey/vim-tmux-navigator" },

  -- Vimux for running commands in tmux
  { "benmills/vimux" },

  -- Linting and fixing
  { "w0rp/ale" },

  -- Split and join lines
  { "AndrewRadev/splitjoin.vim" },

  -- Surround text objects
  { "tpope/vim-surround" },

  -- Auto-save on buffer change
  { "Pocco81/auto-save.nvim", enabled = false },

  -- Indentation guides
  { "lukas-reineke/indent-blankline.nvim" },

  -- Treesitter for syntax highlighting
  { "nvim-treesitter/nvim-treesitter" },

  -- Commenting
  { "preservim/nerdcommenter" },

  -- Color schemes
  { "catppuccin/nvim", },

  -- Snippets
  { "SirVer/ultisnips" },
  { "honza/vim-snippets" },

  -- FZF for fuzzy finding
  { "junegunn/fzf" },
  { "junegunn/fzf.vim" },

  -- Prettier for code formatting
  { "prettier/vim-prettier" },

  -- Matchup for improved matching
  { "andymass/vim-matchup" },

  -- Ruby block text objects
  { "nelstrom/vim-textobj-rubyblock", enabled = false },

  -- Custom text objects
  { "kana/vim-textobj-user" },

  -- Nvim-tree file explorer
  { "nvim-tree/nvim-tree.lua" }
})
