set nocompatible

set listchars=eol:¬,tab:—·,trail:~,extends:>,precedes:<,space:·
set list
set number

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent

syntax on

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'

call vundle#end()
filetype plugin indent on

colorscheme gruvbox
set background=dark
