if exists("b:current_syntax")
    finish
endif

function! AddSection(name)
  let start = '/\v\[' . a:name . '\]/'
  let group = "c4config" . a:name
  exe "syntax region " . group . " matchgroup=c4configSection start=" . start . ' end=/\v^(\[\w+\])@=/'
  exe "syntax cluster c4configContent add=" . group
  exe "syntax match " . group . 'Key containedin=' . group . ' /\v^\w+\=/me=e-1'
  exe "syntax cluster c4configKey add=" . group . 'Key'
endfunction

syntax match c4configKeys containedin=@c4configKey /\v<\w+>/

syntax match c4configValue containedin=@c4configContent contains=c4configOperator,c4configID,c4configNumber /\v(^\w+\=)@<=.+/

syntax match c4configOperator containedin=@c4configContent "\v\="
syntax match c4configOperator contained "\v\|"

syntax match c4configID contained "\v<(\u|\d|_){4}>"
syntax match c4configNumber contained "\v-?<\d+>"


hi def link c4configSection     PreProc
hi def link c4configKeys        Special
hi def link c4configDKey        Identifier
hi def link c4configOperator    Operator
hi def link c4configID          Constant
hi def link c4configNumber      Number

let b:current_syntax = "c4config"

" vim: nowrap fdm=marker
