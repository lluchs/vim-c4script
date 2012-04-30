if exists("b:current_syntax")
    finish
endif

runtime! syntax/c4config.vim

call AddSection("Particle")
syntax keyword c4configDKey containedin=c4configParticleKey Name MaxCount MinLifetime MaxLifetime InitFn ExecFn DrawFn CollisionFn Face YOff Delay Repeats Reverse FadeOutLen FadeOutDelay RByV GravityAcc WindDrift VertexCount VertexY Additive AlphaFade Parallaxity Attach

syntax keyword c4particleExecFn containedin=c4configValue StdExec StdInit Bounce BounceY Stop Die SmokeExec SmokeInit
syntax keyword c4particleDrawFn containedin=c4configValue Std Smoke


hi def link c4particleExecFn Function
hi def link c4particleDrawFn Function

let b:current_syntax = "c4particle"

" vim: nowrap fdm=marker
