call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()

syntax on

filetype plugin indent on

colorscheme gruvbox
set background=dark
set termguicolors

set nocompatible

set autoread
set autowriteall

set clipboard=unnamedplus
set noswapfile

set listchars=eol:¬,tab:—·,trail:~,extends:>,precedes:<,space:·
set list
set number

set backspace=indent,eol,start
set laststatus=2
set display=lastline

set showmode
set showcmd

set ttyfast
set lazyredraw
set mouse=a

set cursorline

set wildmenu
set wildmode=list:longest,full

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent

nnoremap / /\v
vnoremap / /\v
set gdefault
set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch

let mapleader = ","

nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

nnoremap ; :

au FocusLost * :wa
