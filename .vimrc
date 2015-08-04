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

Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'

Plugin 'tpope/vim-surround'

Plugin 'danro/rename.vim'

" Git wrapper
Plugin 'tpope/vim-fugitive'

" Rails helpers
Plugin 'scrooloose/nerdtree'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'


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

" Ruby-vim
let ruby_operators = 1
let ruby_space_errors = 1

" Python-vim
let python_version_3 = 1
let python_highlight_all = 1

" Surround for ror
let g:surround_45 = "<% \r %>"
let g:surround_61 = "<%= \r %>"
let g:surround_36 = "<% \r %><% end %>"
