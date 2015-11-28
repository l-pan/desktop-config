" setlocal tabstop=4
" setlocal softtabstop=4
" setlocal shiftwidth=4
" setlocal textwidth=80
" setlocal smarttab
" setlocal expandtab
" setlocal autoindent
nnoremap <buffer> <F9> :w<CR> :exec '!clear; python' shellescape(@%,1)<CR>
