if exists("b:current_syntax")
    finish
endif

syntax match c4scriptStrict "\v#strict( 2)?"
syntax match c4scriptInclude "\v^#include "
syntax match c4scriptAppendTo "\v^#appendto "

syntax match c4scriptNumber "\v<\d+>"
syntax keyword c4scriptBoolean true false
syntax match c4scriptID "\v<(\u|\d|_){4}>"
syntax region c4scriptString contains=c4scriptTranslation,c4scriptFormat start=/\v"/ skip=/\v\\./ end=/\v"/

syntax match c4scriptTranslation contained "\v\$\w+\$"
syntax match c4scriptFormat contained "\v\%(i|(\d+(\.\d+)?)?(d|x|X|s|v))"

syntax keyword c4scriptConditional if else
syntax keyword c4scriptRepeat while for in break continue
syntax keyword c4scriptKeyword private protected public global
syntax keyword c4scriptKeyword func return

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

" Functions {{{
syntax keyword c4scriptFunction Abs Angle ArcCos ArcSin BitAnd BoundBy Cos Distance Div DoRGBaValue GetRGBaValue
syntax keyword c4scriptFunction HSL HSL2RGB HSLa Inside Max Min Mod Mul Pow RGB RGB2HSL
syntax keyword c4scriptFunction RGBa Random RandomX SetRGBaValue Sin SplitRGBaValue Sqrt Sub Sum Activate Construction
syntax keyword c4scriptFunction AddEffect ChangeEffect CheckEffect EffectCall EffectVar GetEffect GetEffectCount RemoveEffect Sound SoundLevel EditCursor
syntax keyword c4scriptFunction ReloadDef ReloadParticle StartScriptProfiler StopScriptProfiler GetActMapVal GetDefCoreVal GetMaterialVal GetObjectInfoCoreVal GetObjectVal GetPlayerInfoCoreVal GetPlayerVal
syntax keyword c4scriptFunction GetScenarioVal FrameCounter GameOver GetGravity IsNetwork IsNewgfx ResetGamma SetGameSpeed SetGamma SetGravity GetSkyAdjust
syntax keyword c4scriptFunction GetSkyColor SetSkyAdjust SetSkyColor SetSkyFade SetSkyParallax SkyPar_Keep AddMsgBoardCmd DoScoreboardShow ScoreboardCol SetScoreboardData SortScoreboard
syntax keyword c4scriptFunction ExtractLiquid ExtractMaterialAmount GBackLiquid GBackSemiSolid GBackSky GBackSolid GetMaterial GetMaterialColor GetMaterialCount InsertMaterial Material
syntax keyword c4scriptFunction MaterialName SetMaterialColor CastPXS DigFree DigFreeRect DrawDefMap DrawMap DrawMaterialQuad FindConstructionSite FreeRect GetPathLength
syntax keyword c4scriptFunction InLiquid LandscapeHeight LandscapeWidth PathFree SetClimate SetLandscapePixel SetMatAdjust ShakeFree And Equal GreaterThan
syntax keyword c4scriptFunction LessThan Not Or Music MusicLevel SetPlayList CustomMessage Log Message PlayerMessage PlrMessage
syntax keyword c4scriptFunction ActIdle DIR_Left DIR_Right GetActTime GetAction GetActionTarget GetDir GetPhase GetProcedure ObjectSetAction SetAction
syntax keyword c4scriptFunction SetActionData SetActionTargets SetBridgeActionData SetDir SetPhase COMD_Down COMD_DownLeft COMD_DownRight COMD_Left COMD_None COMD_Right
syntax keyword c4scriptFunction COMD_Stop COMD_Up COMD_UpLeft COMD_UpRight Fling GetComDir GetR GetRDir GetXDir GetYDir Jump
syntax keyword c4scriptFunction SetComDir SetR SetRDir SetXDir SetYDir SimFlight AddCommand AppendCommand FinishCommand GetCommand SetCommand
syntax keyword c4scriptFunction GetClrModulation GetColor GetColorDw GetObjectBlitMode GetPortrait GetUnusedOverlayID SetClrModulation SetColor SetColorDw SetGraphics SetObjDrawTransform
syntax keyword c4scriptFunction SetObjectBlitMode SetPicture SetPortrait Buy CastObjects ComposeContents CreateConstruction CreateContents CreateObject PlaceInMaterial PlaceObjects
syntax keyword c4scriptFunction Explode RemoveObject Sell Split2Components Collect Contained Contents ContentsCount GrabContents ScrollContents ShiftContents
syntax keyword c4scriptFunction C4D_All C4D_Background C4D_Goal C4D_Knowledge C4D_Living C4D_Object C4D_Parallax C4D_Rule C4D_StaticBack C4D_Structure C4D_Vehicle
syntax keyword c4scriptFunction GetCategory SetCategory ComponentAll GetComponent SetComponent DeathAnnounce DoBreath GetAlive GetBreath Kill Punch
syntax keyword c4scriptFunction SetAlive CrewMember DoCrewExp GetCaptain GetController GetCrew GetCrewCount GetCrewEnabled GetCursor GetHiRank GrabObjectInfo
syntax keyword c4scriptFunction MakeCrewMember SetCrewEnabled SetCrewStatus UnselectCrew AddMenuItem ClearMenuItems CloseMenu CreateMenu GetMenu GetMenuSelection SelectMenuItem
syntax keyword c4scriptFunction SetMenuSize ShowInfo GetOCF OCF_Alive OCF_AttractLightning OCF_Available OCF_Chop OCF_Collectible OCF_Collection OCF_Construct OCF_Container
syntax keyword c4scriptFunction OCF_CrewMember OCF_Edible OCF_Entrance OCF_Exclusive OCF_FightReady OCF_Fullcon OCF_Grab OCF_HitSpeed1 OCF_HitSpeed2 OCF_HitSpeed3 OCF_HitSpeed4
syntax keyword c4scriptFunction OCF_InFree OCF_InLiquid OCF_InSolid OCF_Inflammable OCF_LineConstruct OCF_Living OCF_NotContained OCF_OnFire OCF_PowerConsumer OCF_PowerSupply OCF_Prey
syntax keyword c4scriptFunction OCF_Rotate AbsX AbsY Enter Exit GetX GetY Resort ResortObject ResortObjects SetObjectOrder
syntax keyword c4scriptFunction SetPosition GetVisibility SetVisibility VIS_All VIS_Allies VIS_Enemies VIS_God VIS_Local VIS_None VIS_Owner ChangeDef
syntax keyword c4scriptFunction CheckEnergyNeedChain DoCon DoDamage DoEnergy DoMagicEnergy EnergyCheck Extinguish FightWith GetCon GetContact GetDamage
syntax keyword c4scriptFunction GetDefBottom GetDesc GetKiller GetMass GetNeededMatStr GetOwner GetPhysical GetValue OnFire ResetPhysical SetCon
syntax keyword c4scriptFunction SetContactDensity SetController SetMass SetName SetOwner SetPhysical SetSolidMask SetTransferZone Stuck TrainPhysical Value
syntax keyword c4scriptFunction AnyContainer FindBase FindContents FindObject FindObject2 FindObjectOwner FindObjects FindOtherContents Find_Action Find_ActionTarget Find_Allied
syntax keyword c4scriptFunction Find_And Find_AnyContainer Find_AtPoint Find_Category Find_Container Find_Distance Find_Exclude Find_Func Find_Hostile Find_ID Find_InRect
syntax keyword c4scriptFunction Find_NoContainer Find_Not Find_OCF Find_Or Find_Owner NoContainer ObjectCount ObjectCount2 AddVertex GetVertex GetVertexNum
syntax keyword c4scriptFunction RemoveVertex SetVertex SetVertexXY VerticesStuck BlastObjects GetDefinition GetEnergy GetEntrance GetID GetMagicEnergy GetName
syntax keyword c4scriptFunction GetRank Incinerate Object ObjectDistance ObjectNumber SetEntrance SetShape ShakeObjects CastParticles ClearParticles
syntax keyword c4scriptFunction CreateParticle DrawParticleLine PushParticles Call DefinitionCall GameCall ObjectCall PrivateCall ProtectedCall C4Id CreateArray
syntax keyword c4scriptFunction Format GetChar GetLength SEqual SetLength WildcardMatch ClearScheduleCall Par Schedule ScheduleCall ScriptCounter
syntax keyword c4scriptFunction ScriptGo _inherited eval goto inherited GetPlrView GetPlrViewMode
syntax keyword c4scriptFunction SetFilmView SetFoW SetPlrView SetPlrViewRange SetViewOffset CreateScriptPlayer DoHomebaseMaterial DoHomebaseProduction DoScore EliminatePlayer GetBase
syntax keyword c4scriptFunction GetCrewExtraData GetHomebaseMaterial GetHomebaseProduction GetPlayerByIndex GetPlayerCount GetPlayerID GetPlayerName GetPlayerTeam GetPlayerType GetPlrColorDw GetPlrDownDouble
syntax keyword c4scriptFunction GetPlrExtraData GetPlrKnowledge GetPlrMagic GetPlrValue GetPlrValueGain GetScore GetSelectCount GetTaggedPlayerName GetWealth Hostile NO_OWNER
syntax keyword c4scriptFunction SelectCrew SetCrewExtraData SetCursor SetHostility SetMaxPlayer SetPlayerTeam SetPlrExtraData SetPlrKnowledge SetPlrMagic SetPlrShowCommand SetPlrShowControl
syntax keyword c4scriptFunction SetPlrShowControlPos SetWealth GainMissionAccess GetMissionAccess GetSystemTime GetTime GetTeamByIndex GetTeamColor GetTeamCount GetTeamName Bubble
syntax keyword c4scriptFunction Smoke GetClimate GetSeason GetTemperature GetWind LaunchLightning SetSeason SetTemperature SetWind LaunchEarthquake LaunchVolcano
syntax keyword c4scriptFunction PlaceAnimal PlaceVegetation AssignVar C4V_Any C4V_Array C4V_Bool C4V_C4ID C4V_C4Object C4V_Int C4V_String Dec
syntax keyword c4scriptFunction DecVar GetType Global GlobalN Inc IncVar IsRef Local LocalN SetGlobal SetLocal SetVar Var VarN
" }}}

syntax keyword c4scriptTodo contained TODO FIXME XXX
syntax match c4scriptComment contains=c4scriptTodo "\v//.*$"
syntax region c4scriptComment contains=c4scriptTodo start=#\v/\*# end=#\*/#

hi link c4scriptStrict        PreProc
hi link c4scriptInclude       Include
hi link c4scriptAppendTo      Include
hi link c4scriptNumber        Number
hi link c4scriptID            Constant
hi link c4scriptBoolean       Boolean
hi link c4scriptString        String
hi link c4scriptTranslation   SpecialChar
hi link c4scriptFormat        SpecialChar
hi link c4scriptKeyword       Keyword
hi link c4scriptRepeat        Repeat
hi link c4scriptConditional   Conditional
hi link c4scriptOperator      Operator
hi link c4scriptType          Type
hi link c4scriptFunction      Function
hi link c4scriptComment       Comment
hi link c4scriptTodo          Todo

let b:current_syntax = "c4script"

" vim: nowrap fdm=marker
