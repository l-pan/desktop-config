" Vundle requirements
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

call vundle#end()
filetype plugin indent on

" Vundle plugins

Plugin 'othree/html5.vim'
Plugin 'mattn/emmet-vim'

" HTML Macro

:let g:html_tag_case = 'lowercase'

" My config

syn on
set nu
set tabstop=2
set softtabstop=2
set shiftwidth=2
set textwidth=80
set smarttab
set expandtab
set autoindent
