if exists("g:loaded_vmacs") || &cp
  finish
endif
let g:loaded_vmacs = 1

inoremap <expr> <Plug>(vmacs_transpose_i) transposition#transpose('i')
cnoremap <expr> <Plug>(vmacs_transpose_c) transposition#transpose('c')
