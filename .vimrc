" Basic settings for improved editing
set nocompatible              " Use Vim's enhanced features, not Vi's
set number                    " Show line numbers
" set relativenumber            " Show relative line numbers
set ignorecase smartcase      " Case-insensitive search unless uppercase used
set incsearch                 " Incremental search as you type
set hlsearch                  " Highlight search results
set showmatch                 " Briefly highlight matching brackets
set autoindent                " Indent new lines based on previous line
set smartindent               " Smarter indentation for code
set tabstop=4                 " 4 spaces per tab
set shiftwidth=4              " Indentation is 4 spaces
set expandtab                 " Use spaces instead of tabs
set backspace=indent,eol,start " Backspace over anything in insert mode
set nowrap                    " Don't wrap lines
set linebreak                 " Break lines at word boundaries
set scrolloff=5               " Keep 5 lines above/below cursor when scrolling
set sidescrolloff=5           " Keep 5 columns left/right of cursor when scrolling horizontally

" File encoding and backup settings
set encoding=utf-8           " Use UTF-8 encoding for files
set fileencoding=utf-8       " Save files as UTF-8
set backup                    " Create backup files
set backupdir=~/.vim/backup  " Store backups in a dedicated directory
set undofile                  " Enable persistent undo
set undodir=~/.vim/undo      " Store undo files in a dedicated directory

" Appearance and colors
set t_Co=256                  " Enable 256-color support in the terminal
set background=dark           " Optimize colors for a dark background
colorscheme desert             " Use the 'desert' color scheme (or your preference)

" added
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" Plugin management (using vim-plug)
call plug#begin('~/.vim/plugged')

" Misc
Plug 'tpope/vim-fugitive'      " Git integration
Plug 'preservim/nerdtree'      " File explorer
Plug 'dense-analysis/ale'      " Asynchronous linting and fixing

" Elixir Language Support
Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}
Plug 'elixir-lang/vim-elixir'
Plug 'mhinz/vim-mix-format'

" Code Navigation & Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'majutsushi/tagbar'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Formatting & Linting
Plug 'rrrene/vim-credo', { 'for': 'elixir' }


call plug#end()

" Custom key mappings
nnoremap <leader>n :NERDTreeToggle<CR> " Toggle NERDTree with <leader>n

" Additional customizations
" ... (Add your own settings and plugins here)

" coc.nvim configurations
" Install Elixir language server: mix escript.install hex coc_elixir
let g:coc_global_extensions = ['coc-elixir']

" ALE configuration
let g:ale_linters = {'elixir': ['credo', 'mix']}

