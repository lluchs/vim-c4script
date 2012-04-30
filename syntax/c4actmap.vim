if exists("b:current_syntax")
    finish
endif

runtime! syntax/c4config.vim

" section Action
call AddSection("Action")
syntax keyword c4configDKey containedin=c4configActionKey Name Procedure Directions FlipDir Length Reverse Delay Attach Facet FacetBase FacetTopFace FacetTargetStretch NextAction NoOtherAction StartCall EndCall PhaseCall AbortCall InLiquidAction Sound ObjectDisabled DigFree EnergyUsage

syntax keyword c4actmapProcedure containedin=c4configValue NONE WALK FLIGHT KNEEL SCALE HANGLE DIG SWIM THROW BRIDGE BUILD PUSH CHOP LIFT FLOAT ATTACH FIGHT CONNECT PULL
syntax keyword c4actmapCNAT containedin=c4configValue CNAT_None CNAT_Left CNAT_Right CNAT_Top CNAT_Bottom CNAT_Center CNAT_MultiAttach CNAT_NoCollision


hi def link c4actmapProcedure   Constant
hi def link c4actmapCNAT        Constant

let b:current_syntax = "c4actmap"

" vim: nowrap fdm=marker
