set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'lumiliet/vim-twig.git'

call vundle#end()
filetype plugin indent on

set et
set sw=2
set sts=2
set smarttab

set number

set mouse=a

syntax on

let NERDTreeShowHidden=1
