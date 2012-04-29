if exists("b:current_syntax")
    finish
endif

" load common configuration
runtime! syntax/c4config.vim

call AddSection("Head")
syntax keyword c4configDKey containedin=c4configHeadKey Icon Title Version RoundOptions MaxPlayer NoInitialize MissionAccess Replay Film ForcedGfxMode

call AddSection("Game")
syntax keyword c4configDKey containedin=c4configGameKey Rules Goals ValueOverloads FoWColor Mode Elimination CooperativeGoal CreateObjects ClearObjects ClearMaterials BaseFunctionality BaseRegenerateEnergyPrice

call AddSection("Player1")
call AddSection("Player2")
call AddSection("Player3")
call AddSection("Player4")
syntax cluster c4scenarioPlayerKey contains=c4configPlayer1Key,c4configPlayer2Key,c4configPlayer3Key,c4configPlayer4Key
syntax keyword c4configDKey containedin=@c4scenarioPlayerKey Wealth Position Crew Buildings Vehicles Material Knowledge HomeBaseMaterial HomeBaseProduction Magic

call AddSection("Landscape")
syntax keyword c4configDKey containedin=c4configLandscapeKey Vegetation VegetationLevel InEarth InEarthLevel Sky SkyFade BottomOpen TopOpen LeftOpen RightOpen AutoScanSideOpen MapWidth MapHeight MapZoom Amplitude Phase Period Random Material Liquid LiquidLevel MapPlayerExtend Layers ExactLandscape Gravity NoScan KeepMapCreator SkyScrollMode FoWRes

call AddSection("Animals")
syntax keyword c4configDKey containedin=c4configAnimalsKey Animals Nest

call AddSection("Weather")
syntax keyword c4configDKey containedin=c4configWeatherKey Climate StartSeason YearSpeed Rain Wind Lightning Precipitation NoGamma

call AddSection("Disasters")
syntax keyword c4configDKey containedin=c4configDisastersKey Meteorite Volcano Earthquake

call AddSection("Environment")
syntax keyword c4configDKey containedin=c4configEnvironmentKey Objects

call AddSection("Definitions")
syntax match c4configDKey containedin=c4configDefinitionsKey /\v<Definition\d>/
syntax keyword c4configDKey containedin=c4configDefinitionsKey LocalOnly SkipDefs

let b:current_syntax = "c4config"

