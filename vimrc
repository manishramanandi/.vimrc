" ===========================================
" General Settings
" ===========================================

" Use black background
set background=dark
highlight Normal ctermbg=black guibg=black

" Enable syntax highlighting and plugins
syntax enable
filetype plugin indent on

" Enable 24-bit (true-color) mode (if terminal supports)
if has("termguicolors")
  set termguicolors
endif

" Line numbering
set number
set relativenumber

" Show matching parentheses and brackets
set showmatch

" Enable incremental search with highlight
set incsearch
set hlsearch

" Set tab and indentation preferences for C/C++
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Use system clipboard (optional)
set clipboard=unnamedplus

" Enable mouse support (optional)
set mouse=a

" ===========================================
" Cursor Shape Fix for Normal & Insert Modes
" ===========================================

if exists('$VIM')
    let &t_SI = "\e[5 q"   " Thin I-beam cursor in Insert mode
    let &t_EI = "\e[2 q"   " Block cursor in Normal mode
endif

" ===========================================
" Autocompletion & Snippets for C/C++
" ===========================================

" Enable omnifunc completion for C/C++
autocmd FileType c,cpp setlocal omnifunc=ccomplete#Complete

" Load snippets for C/C++ (requires 'vim-snipmate' or 'ultisnips')
" Uncomment if you use one of these plugins
" let g:snips_author = "YourName"
" autocmd FileType c,cpp UltiSnipsAddFiletypes c

" ===========================================
" Key Mappings (Default Vim Keybindings)
" ===========================================

" Set leader key to space
let mapleader = " "

" Enable Ctrl + N for autocompletion
inoremap <C-Space> <C-x><C-o>

" ===========================================
" Plugins (If You Use Vim-Plug)
" ===========================================

" Install Vim-Plug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
  \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Snippets for C/C++
Plug 'honza/vim-snippets'

" Syntax checking and Linting
Plug 'dense-analysis/ale'

call plug#end()

" ===========================================
" Final Notes
" ===========================================
" To install plugins, open Vim and run:
" :PlugInstall
"
" Use <C-Space> for autocompletion
" Use <leader> + e (space + e) for NERDTree (if installed)

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
