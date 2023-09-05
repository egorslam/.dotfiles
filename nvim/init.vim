call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-rails'
Plug 'tpope/vim-fugitive'
Plug 'vim-test/vim-test'
Plug 'thoughtbot/vim-rspec'
Plug 'christoomey/vim-tmux-navigator'
Plug 'benmills/vimux'
Plug 'w0rp/ale'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'tpope/vim-surround'

Plug 'Pocco81/auto-save.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" File management
Plug 'preservim/nerdcommenter'

" Color schemes
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

" Vim snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'prettier/vim-prettier', {'for': ['javascript', 'typescript', 'css', 'scss', 'json', 'graphql', 'markdown', 'yaml', 'html'] }
" match-up is a drop-in replacement for the vim plugin matchit.vim.
Plug 'andymass/vim-matchup'
" A custom text object for selecting ruby blocks.
Plug 'nelstrom/vim-textobj-rubyblock'
" Vim plugin: Create your own text objects
Plug 'kana/vim-textobj-user'

Plug 'nvim-tree/nvim-tree.lua'

call plug#end()

let g:ale_fixers = ['rubocop', 'scss_lint', 'eslint']
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'ruby': ['rubocop'],
\   'css': ['scss_lint'],
\}
let g:ale_linters_explicit = 1
nmap <silent> <leader>aj :ALENext<cr>
nmap <silent> <leader>ak :ALEPrevious<cr>
nmap <silent> <leader>af :ALEFix<cr>

" Runs test commands in a small tmux pane
let test#strategy = 'vimux'

lua <<EOF
  -- General
  vim.opt.number = true
  vim.opt.relativenumber = true
  vim.opt.termguicolors = true

  -- Tab
  vim.opt.tabstop = 2
  vim.opt.shiftwidth = 2
  vim.opt.expandtab = true

  -- Disable swap file
  vim.opt.backup = false
  vim.opt.writebackup = false
  vim.opt.swapfile = false

  -- Search
  vim.opt.ignorecase = true
  vim.opt.incsearch = true
  vim.opt.hlsearch = true

  -- Trim whitespaces on save
  vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = { "*" },
    command = [[%s/\s\+$//e]],
  })

  require('nvim-treesitter.configs').setup {
    ensure_installed =  { "ruby", "javascript", "lua" },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
  }

  require("catppuccin").setup {
    transparent_background = true,
    integrations = {
      nvimtree = true,
      treesitter = true,
    }
  }

  vim.cmd.colorscheme "catppuccin"

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
EOF
