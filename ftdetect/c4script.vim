au BufNewFile,BufRead DefCore.txt setfiletype c4defcore
au BufNewFile,BufRead ActMap.txt setfiletype c4actmap

au BufNewFile,BufRead *.c call s:CheckC4Script()

function! s:CheckC4Script()
  let path = expand("%:p:h")
  if path =~? "\\vc4.$"
    let b:c4script_version = "CR"
    set filetype=c4script
  elseif path =~? "\\voc.$"
    let b:c4script_version = "OC"
    set filetype=c4script
  endif
endfunction
