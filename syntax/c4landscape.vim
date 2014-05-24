if exists("b:current_syntax")
    finish
endif

syntax keyword c4landscapeKeyword map overlay point
syntax keyword c4landscapeAttribute mat tex x y wdt hgt algo zoomX zoomY ox oy a b turbulence rotate invert seed loosebounds mask grp sub lambda
syntax keyword c4landscapeAlgo solid random checker bozo sin boxes rndchecker lines border mandel rndall script poly

syntax match c4landscapeNumber "\v[+-]?<\d+(px)?>\%?"
syntax match c4landscapeOperator "\V\[|&^]"

syntax match c4landscapeOverlayName /\v((overlay|map)\s+)@<=\w+/

syntax keyword c4landscapeTodo contained TODO FIXME XXX
syntax match c4landscapeComment contains=c4landscapeTodo "\v//.*$"
syntax region c4landscapeComment contains=c4landscapeTodo start=#\v/\*# end=#\*/#

hi def link c4landscapeKeyword              Keyword
hi def link c4landscapeAttribute            Label
hi def link c4landscapeAlgo                 Constant
hi def link c4landscapeNumber               Number
hi def link c4landscapeOperator             Operator
hi def link c4landscapeOverlayName          Identifier
hi def link c4landscapeComment              Comment
hi def link c4landscapeTodo                 Todo

let b:current_syntax = "c4landscape"
