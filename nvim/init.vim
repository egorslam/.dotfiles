set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/indentLine'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-fugitive'
Plug 'vim-test/vim-test'
Plug 'thoughtbot/vim-rspec'
Plug 'christoomey/vim-tmux-navigator'
Plug 'benmills/vimux'
Plug 'w0rp/ale'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'tpope/vim-surround'

Plug '907th/vim-auto-save'

" File management
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdcommenter'

" Color schemes
Plug 'sonph/onehalf', {'rtp': 'vim/'}
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
" Syntax highlighting and indenting for JSX
Plug 'mxw/vim-jsx'
" Syntax for JavaScript libraries
Plug 'pangloss/vim-javascript'

call plug#end()

syntax enable

" Want utf8 at all times
set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8
set ruler                      " Always show current position
set cmdheight=1                " Height of the command bar
set laststatus=2               " Always show the status line
set tabstop=2       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=2    " Indents will have a width of 4
set softtabstop=2   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces
set nu
set relativenumber
set incsearch hlsearch
set backspace=indent,eol,start

let mapleader=" "

" NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1
let g:NERDSpaceDelims = 1

" Auto save
let g:auto_save = 1
let g:auto_save_events = ["InsertLeave", "TextChanged"]

" FZF
set rtp+=/opt/homebrew/opt/fzf

nmap <C-P> :call fzf#vim#files('', fzf#vim#with_preview('right'))<CR>
nmap <leader>rg :Rg <C-R><C-W><CR>

" command! -bang -nargs=* Ag
  " \ call fzf#vim#grep(
  " \   'ag --column --numbers --noheading --color --smart-case '.shellescape(<q-args>), 1,
  " \   fzf#vim#with_preview(), <bang>0)

if (has("termguicolors"))
  set termguicolors
endif

colorscheme catppuccin-macchiato

" ALE
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

" Rspec
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" Fugitive mappings
nnoremap <Leader>gb :Git blame<CR>
nnoremap <Leader>gs :Git status<CR>
nnoremap <Leader>gd :Git diff<CR>

" Runs test commands in a small tmux pane
let test#strategy = 'vimux'

let g:rspec_command = "bundle exec rspec {spec}"
let test#javascript#jest#executable = 'yarn jest'

map <C-n><C-f> :NERDTreeFind<CR>

" Trim whitespaces on save
autocmd BufWritePre * %s/\s\+$//e

" Disable swap file
set nobackup
set nowritebackup
set noswapfile
