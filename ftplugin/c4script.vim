" C4Script filetype plugin

" Detect OC/CR in case the user set the filetype manually.
if !exists("b:c4script_version")
  if search('^#strict', 'nwc')
    let b:c4script_version = 'CR'
  else
    let b:c4script_version = 'OC'
  endif
endif


if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

" === Options ===

" C4Script is C-like enough, so the default indentation works fine.
setlocal smartindent


" === Mappings ===

" Remove hungarian notation
nnoremap <buffer> <localleader>rh :%s/\v<([pifa]\|sz)([A-Z])/\l\2/c<CR>
