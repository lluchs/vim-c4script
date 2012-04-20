if exists("b:current_syntax")
    finish
endif

syntax match c4defcoreSection /\v\[DefCore\]/
syntax match c4defcoreSection /\v\[Physical\]/

syntax match c4defcoreKey contains=c4defcoreDKey /\v^\w+\=/me=e-1
" section DefCore
syntax keyword c4defcoreDKey contained id Version Name Category MaxUserSelect TimerCall Timer ContactCalls Width Height Offset Value Mass Components SolidMask TopFace Picture Vertices VertexX VertexY VertexCNAT VertexFriction Entrance Collection CollectionLimit FireTop Placement Exclusive ContactIncinerate BlastIncinerate BurnTo Base Line LineConnect Prey Edible CrewMember Growth Rebuy Construction ConstructTo Grab GrabPutGet Collectible Rotate Chop Float ContainBlast ColorByOwner ColorByMaterial HorizontalFix BorderBound UprightAttach StretchGrowth Basement NoBurnDecay IncompleteActivity Oversize AttractLightning Fragile NoPushEnter VehicleControl Pathfinder NoComponentMass NoStabilize ClosedContainer SilentCommands NoBurnDamage TemporaryCrew SmokeRate BlitMode NoBreath ConSizeOff NoSell NoGet NoFight LiftTop RotatedEntrance MoveToRange NoTransferZones AutoContextMenu
" section Physical
syntax keyword c4defcoreDKey contained Energy Breath Walk Jump Scale Hangle Dig Swim Throw Push Fight Magic Float CanScale CanHangle CanDig CanConstruct CorrosionResist BreatheWater

syntax match c4defcoreOperator "\v\="
syntax match c4defcoreOperator "\v\|"

syntax match c4defcoreID "\v<(\u|\d|_){4}>"
syntax keyword c4defcoreCategory C4D_StaticBack C4D_Structure C4D_Vehicle C4D_Living C4D_Object C4D_Goal C4D_Environment C4D_SelectBuilding C4D_SelectVehicle C4D_SelectMaterial C4D_SelectKnowledge C4D_SelectHomebase C4D_SelectAnimal C4D_SelectNest C4D_SelectInEarth C4D_SelectVegetation C4D_TradeLiving C4D_Magic C4D_Rule C4D_Background C4D_Parallax C4D_MouseSelect C4D_Foreground C4D_MouseIgnore C4D_IgnoreFoW
syntax keyword c4defcoreCNAT CNAT_Left CNAT_Right CNAT_Top CNAT_Bottom CNAT_Center CNAT_MultiAttach CNAT_NoCollision
syntax keyword c4defcoreLineConnect C4D_PowerInput C4D_PowerOutput C4D_LiquidInput C4D_LiquidOutput C4D_PowerGenerator C4D_PowerConsumer C4D_LiquidPump C4D_EnergyHolder
syntax match c4defcoreNumber "\v-?<\d+>"


hi def link c4defcoreSection     PreProc
hi def link c4defcoreKey         Special
hi def link c4defcoreDKey        Function
hi def link c4defcoreOperator    Operator
hi def link c4defcoreID          Constant
hi def link c4defcoreCategory    Constant
hi def link c4defcoreCNAT        Constant
hi def link c4defcoreLineConnect Constant
hi def link c4defcoreNumber      Number

let b:current_syntax = "c4defcore"

" vim: nowrap fdm=marker
