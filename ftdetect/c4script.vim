au BufNewFile,BufRead *.c call s:CheckC4Script()

function! s:CheckC4Script()
  if expand("%:p:h") =~? "\\v(oc|c4).$"
    set filetype=c4script
  endif
endfunction
