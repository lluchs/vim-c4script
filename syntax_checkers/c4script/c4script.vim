if exists('g:loaded_syntastic_c4script_c4script_checker')
    finish
endif
let g:loaded_syntastic_c4script_c4script_checker = 1

let s:save_cpo = &cpo
set cpo&vim

function! SyntaxCheckers_c4script_c4script_GetLocList() dict
    let makeprg = self.makeprgBuild({
                \ 'args': '-c',
                \ 'args_after': '' })

    let errorformat =
                \ '%t%*[^:]: %m (%f:%l:%c)'

    let env = { }

    return SyntasticMake({ 'makeprg': makeprg, 'errorformat': errorformat, 'env': env })
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
            \ 'filetype': 'c4script',
            \ 'name': 'c4script',
            \ 'exec': 'c4script' })

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: set sw=4 sts=4 et fdm=marker:
