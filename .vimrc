set nu
syntax on
se shiftwidth=3
set autoindent
set cindent
set cinoptions=li
set omnifunc=htmlcomplete#CompleteTags
iabbrev </ </<C-X><C-O>
set background=dark
" colorscheme solarized
"set guifont=Monospace\ 18
filetype plugin on
filetype plugin indent on

" Html variables 
let g:html_template = '~/.vim/template.html'
let g:html_tag_case = 'lowercase'
