" === Mappings ===

" Remove ungarian notation
nnoremap <buffer> <localleader>rh :%s/\v<([pifa]\|sz)([A-Z])/\l\2/c<CR>
