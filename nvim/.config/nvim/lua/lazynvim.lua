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
      vim.g['test#strategy'] = 'vimux'
    end,
  },
  { "thoughtbot/vim-rspec" },

  -- Tmux navigation
  { "christoomey/vim-tmux-navigator" },

  -- Vimux for running commands in tmux
  { "benmills/vimux" },

  -- Split and join lines
  { "AndrewRadev/splitjoin.vim" },

  -- Surround text objects
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup()
    end
  },

  -- Auto-save on buffer change
  { "Pocco81/auto-save.nvim" },

  -- Indentation guides
  { 
    "lukas-reineke/indent-blankline.nvim", 
    main = "ibl", 
    opts = {}
  },

  -- Treesitter for syntax highlighting
  { "nvim-treesitter/nvim-treesitter" },
  { "nvim-treesitter/nvim-treesitter-textobjects" },

  -- Commenting
  { 
    "numToStr/Comment.nvim",
    config = function()
      require('Comment').setup()
    end
  },

  -- Color schemes
  { "catppuccin/nvim", },

  -- Snippets
  { "SirVer/ultisnips" },
  { "honza/vim-snippets" },

  -- Telescope
  {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.3',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },

  -- Matchup for improved matching
  { "andymass/vim-matchup" },

  -- Nvim-tree file explorer
  { "nvim-tree/nvim-tree.lua" },
  
  -- Linting
  { 'stevearc/conform.nvim' },

  { 'neoclide/coc.nvim', branch = 'release' },


  -- LSP
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},

  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},

  {'neovim/nvim-lspconfig'},
  --
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  -- {
  --   'L3MON4D3/LuaSnip',
  --   dependencies = { "rafamadriz/friendly-snippets" },
  -- },
})
