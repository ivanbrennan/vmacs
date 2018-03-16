if exists("g:loaded_vmacs") || &cp
  finish
endif
let g:loaded_vmacs = 1

" Plug map usage:
"
"  imap <C-T> <Plug>(vmacs_transpose_i)
"  cmap <C-T> <Plug>(vmacs_transpose_c)
"  imap <C-A> <Plug>(vmacs_start_of_line)

inoremap <expr> <Plug>(vmacs_transpose_i) transposition#transpose('i')
cnoremap <expr> <Plug>(vmacs_transpose_c) transposition#transpose('c')
inoremap <expr> <Plug>(vmacs_start_of_line) encoding#first_nonblankp(getline('.'), col('.')) ? "\<Home>" : "\<Esc>I"
