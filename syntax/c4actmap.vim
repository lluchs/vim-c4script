if exists("b:current_syntax")
    finish
endif

"syntax keyword c4actmapSection Action
syntax match c4actmapSection /\v\[Action\]/

syntax match c4actmapKey contains=c4actmapDKey /\v^\w+\=/me=e-1
" section Action
syntax keyword c4actmapDKey contained Name Procedure Directions FlipDir Length Reverse Delay Attach Facet FacetBase FacetTopFace FacetTargetStretch NextAction NoOtherAction StartCall EndCall PhaseCall AbortCall InLiquidAction Sound ObjectDisabled DigFree EnergyUsage

syntax match c4actmapOperator "\v\="
syntax match c4actmapOperator "\v\|"

syntax keyword c4actmapProcedure NONE WALK FLIGHT KNEEL SCALE HANGLE DIG SWIM THROW BRIDGE BUILD PUSH CHOP LIFT FLOAT ATTACH FIGHT CONNECT PULL
syntax keyword c4actmapCNAT CNAT_None CNAT_Left CNAT_Right CNAT_Top CNAT_Bottom CNAT_Center CNAT_MultiAttach CNAT_NoCollision
syntax match c4actmapNumber "\v-?<\d+>"


hi def link c4actmapSection     PreProc
hi def link c4actmapKey         Special
hi def link c4actmapDKey        Function
hi def link c4actmapOperator    Operator
hi def link c4actmapID          Constant
hi def link c4actmapProcedure   Constant
hi def link c4actmapCNAT        Constant
hi def link c4actmapNumber      Number

let b:current_syntax = "c4actmap"

" vim: nowrap fdm=marker
