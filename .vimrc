" Vundle requirements
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

call vundle#end()
filetype plugin indent on
filetype plugin on

" Vundle plugins

"color theme
Plugin 'altercation/vim-colors-solarized'

" Markdown preview
Plugin 'suan/vim-instant-markdown'

" html
Plugin 'mattn/emmet-vim'

" general
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'tpope/vim-surround'
Plugin 'Shougo/vimproc.vim'

" Git wrapper
Plugin 'tpope/vim-fugitive'

" Rails helpers
Plugin 'scrooloose/nerdtree'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'

" node.js
Plugin 'moll/vim-node'
Plugin 'digitaltoad/vim-jade'

" Javascript
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'

Plugin 'othree/javascript-libraries-syntax.vim'
let g:used_javascript_libs = 'angularjs'

" typescript
Plugin 'leafgarland/typescript-vim'
Plugin 'clausreinke/typescript-tools.vim'
au BufRead,BufNewFile *.ts        setlocal filetype=typescript
set rtp+=./.vim/bundle/typescript-tools.vim/

" Syntax checker
Plugin 'scrooloose/syntastic.git'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jshint']

" typescript checker target

" Disable certain file types
let g:syntastic_mode_map={ 'mode': 'active',
                     \ 'active_filetypes': [],
                     \ 'passive_filetypes': ['typescript', 'scss'] }

" autocomplete
Plugin 'Valloric/YouCompleteMe'

let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview

" for javascript
Plugin 'ternjs/tern_for_vim'

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

au BufNewFile,BufReadPost *.jade set filetype=jade
au BufNewFile,BufReadPost *.ts set filetype=typescript

" Ruby-vim
let ruby_operators = 1
let ruby_space_errors = 1

" Python-vim
let python_version_3 = 1
let python_highlight_all = 1

" Solarized
if has('gui_running')
  set background=dark
  colorscheme solarized
  set guifont =Monospace\ 15
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set guioptions-=r  "remove right-hand scroll bar
  set guioptions-=L  "remove left-hand scroll bar
endif
