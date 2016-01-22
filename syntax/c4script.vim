if exists("b:current_syntax")
    finish
endif

syntax match c4scriptInclude "\v^#include "
syntax match c4scriptAppendTo "\v^#appendto "

syntax match c4scriptNumber "\v<\d+>"
syntax keyword c4scriptBoolean true false
syntax region c4scriptString contains=c4scriptTranslation,c4scriptFormat start=/\v"/ skip=/\v\\./ end=/\v"/

syntax match c4scriptTranslation contained "\v\$\w+\$"
syntax match c4scriptFormat contained "\v\%(i|(\d+(\.\d+)?)?(d|x|X|s|v))"

syntax keyword c4scriptConditional if else
syntax keyword c4scriptRepeat while for in break continue
syntax keyword c4scriptKeyword private protected public global
syntax keyword c4scriptKeyword func this return

" Operators {{{
" + ++ +=
syntax match c4scriptOperator "\v\+(\=|\+)?"
" - -- -=
syntax match c4scriptOperator "\v-(\=|-)?"
" * ** *=
syntax match c4scriptOperator "\v\*(\=|\*)?"
" / /=
syntax match c4scriptOperator "\v/\=?"
" % %=
syntax match c4scriptOperator "\v\%\=?"
" < << <=
syntax match c4scriptOperator "\v\<(\=|\<)?"
" > >> >=
syntax match c4scriptOperator "\v\>(\=|\>?)"
" ! !=
syntax match c4scriptOperator "\v!\=?"
" = ==
syntax match c4scriptOperator "\v\=\=?"
" ^ ~
syntax match c4scriptOperator "\v\^|\~"
" & &&
syntax match c4scriptOperator "\v\&\&?"
" | ||
syntax match c4scriptOperator "\v\|\|?"
" }}}

syntax keyword c4scriptType var local static const
syntax keyword c4scriptType int bool id string object array

" Constants {{{
syntax keyword c4scriptConstant GFXOV_MODE_None GFXOV_MODE_Base GFXOV_MODE_Action GFXOV_MODE_Picture GFXOV_MODE_IngamePicture GFXOV_MODE_Object GFXOV_MODE_ExtraGraphics
syntax keyword c4scriptConstant GFX_Overlay
syntax keyword c4scriptConstant FX_Call_DmgScript FX_Call_DmgBlast FX_Call_DmgFire FX_Call_DmgChop FX_Call_EngScript FX_Call_EngBlast FX_Call_EngObjHit FX_Call_EngFire FX_Call_EngBaseRefresh FX_Call_EngAsphyxiation FX_Call_EngCorrosion FX_Call_EngStruct FX_Call_EngGetPunched
" }}}

syntax match c4scriptFunctionDefinition contains=c4scriptEngineCalls /\v(func\s+(\&\s*)?)@<=\w+/
" object calls
syntax keyword c4scriptEngineCalls contained Initialize Completion Construction Destruction Hit Hit2 Hit3 Grab Grabbed Get Put Damage DeepBreath Incineration IncinerationEx Death Activate Contact_ Control_ Contained_ ControlCommand ControlCommandFinished ControlTransfer UpdateTransferZone MenuQueryCancel IsFulfilled ControlContents Selection CatchBlow QueryCatchBlow LineBreak BuildNeedsMaterial AttachTargetLost CrewSelection GetObject2Drop OnMenuSelection CalcValue CalcDefValue CalcBuyValue CalcSellValue LiftTop Stuck GrabLost Collection Collection2 Departure Ejection Entrance ActivateEntrance RejectCollect RejectEntrance InitializePlayer SellTo Sale Purchase Recruitment RejectTeamSwitch OnTeamSwitch
" control calls
syntax match c4scriptEngineCalls contained /\v<(Control|Contained)(Left|Up|Right|Down|Dig|Throw)(Single|Double)?>/
syntax match c4scriptEngineCalls contained /\v<Control(Special2?|Wheel(Up|Down))(Single|Double)?>/
" additional scenario calls
syntax keyword c4scriptEngineCalls contained InitializePlayer RelaunchPlayer RemovePlayer RejectHostilityChange OnHostilityChange RejectTeamSwitch OnTeamSwitch OnGameOver OnWealthChanged
syntax match c4scriptEngineCalls contained /\v<Script\d+>/

syntax keyword c4scriptTodo contained TODO FIXME XXX
syntax match c4scriptComment contains=c4scriptTodo "\v//.*$"
syntax region c4scriptComment contains=c4scriptTodo start=#\v/\*# end=#\*/#

if b:c4script_version == 'OC'
    runtime! syntax/c4script_oc.vim
elseif b:c4script_version == 'CR'
    runtime! syntax/c4script_cr.vim
endif

hi def link c4scriptInclude              Include
hi def link c4scriptAppendTo             Include
hi def link c4scriptNumber               Number
hi def link c4scriptConstant             Constant
hi def link c4scriptBoolean              Boolean
hi def link c4scriptString               String
hi def link c4scriptTranslation          SpecialChar
hi def link c4scriptFormat               SpecialChar
hi def link c4scriptKeyword              Keyword
hi def link c4scriptRepeat               Repeat
hi def link c4scriptConditional          Conditional
hi def link c4scriptOperator             Operator
hi def link c4scriptType                 Type
hi def link c4scriptFunction             Function
hi def link c4scriptSpecialFunction      Special
hi def link c4scriptFunctionDefinition   Function
hi def link c4scriptEngineCalls          Special
hi def link c4scriptComment              Comment
hi def link c4scriptTodo                 Todo

let b:current_syntax = "c4script"

" vim: nowrap fdm=marker
