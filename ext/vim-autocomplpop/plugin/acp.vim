"=============================================================================
" Copyright (c) 2007-2009 Takeshi NISHIDA
"
" GetLatestVimScripts: 1879 1 :AutoInstall: AutoComplPop
"=============================================================================
" LOAD GUARD {{{1

try
  if !l9#guardScriptLoading(expand('<sfile>:p'), 702, 101, [])
    finish
  endif
catch /E117/
  echoerr '***** L9 library must be installed! *****'
  finish
endtry

" }}}1
"=============================================================================
" FUNCTION: {{{1

"
function s:makeDefaultBehavior()
  let behavs = {
        \   '*'      : [],
        \   'ruby'   : [],
        \   'python' : [],
        \   'perl'   : [],
        \   'xml'    : [],
        \   'html'   : [],
        \   'xhtml'  : [],
        \   'css'    : [],
        \ }
  "---------------------------------------------------------------------------
  if !empty(g:acp_behaviorUserDefinedFunction) &&
        \ !empty(g:acp_behaviorUserDefinedMeets)
    for key in keys(behavs)
      call add(behavs[key], {
            \   'command'      : "\<C-x>\<C-u>",
            \   'completefunc' : g:acp_behaviorUserDefinedFunction,
            \   'meets'        : g:acp_behaviorUserDefinedMeets,
            \   'repeat'       : 0,
            \ })
    endfor
  endif
  "---------------------------------------------------------------------------
  for key in keys(behavs)
    call add(behavs[key], {
          \   'command'      : "\<C-x>\<C-u>",
          \   'completefunc' : 'acp#completeSnipmate',
          \   'meets'        : 'acp#meetsForSnipmate',
          \   'onPopupClose' : 'acp#onPopupCloseSnipmate',
          \   'repeat'       : 0,
          \ })
  endfor
  "---------------------------------------------------------------------------
  for key in keys(behavs)
    call add(behavs[key], {
          \   'command' : g:acp_behaviorKeywordCommand,
          \   'meets'   : 'acp#meetsForKeyword',
          \   'repeat'  : 0,
          \ })
  endfor
  "---------------------------------------------------------------------------
  for key in keys(behavs)
    call add(behavs[key], {
          \   'command' : "\<C-x>\<C-f>",
          \   'meets'   : 'acp#meetsForFile',
          \   'repeat'  : 1,
          \ })
  endfor
  "---------------------------------------------------------------------------
  call add(behavs.ruby, {
        \   'command' : "\<C-x>\<C-o>",
        \   'meets'   : 'acp#meetsForRubyOmni',
        \   'repeat'  : 0,
        \ })
  "---------------------------------------------------------------------------
  call add(behavs.python, {
        \   'command' : "\<C-x>\<C-o>",
        \   'meets'   : 'acp#meetsForPythonOmni',
        \   'repeat'  : 0,
        \ })
  "---------------------------------------------------------------------------
  call add(behavs.perl, {
        \   'command' : "\<C-x>\<C-o>",
        \   'meets'   : 'acp#meetsForPerlOmni',
        \   'repeat'  : 0,
        \ })
  "---------------------------------------------------------------------------
  call add(behavs.xml, {
        \   'command' : "\<C-x>\<C-o>",
        \   'meets'   : 'acp#meetsForXmlOmni',
        \   'repeat'  : 1,
        \ })
  "---------------------------------------------------------------------------
  call add(behavs.html, {
        \   'command' : "\<C-x>\<C-o>",
        \   'meets'   : 'acp#meetsForHtmlOmni',
        \   'repeat'  : 1,
        \ })
  "---------------------------------------------------------------------------
  call add(behavs.xhtml, {
        \   'command' : "\<C-x>\<C-o>",
        \   'meets'   : 'acp#meetsForHtmlOmni',
        \   'repeat'  : 1,
        \ })
  "---------------------------------------------------------------------------
  call add(behavs.css, {
        \   'command' : "\<C-x>\<C-o>",
        \   'meets'   : 'acp#meetsForCssOmni',
        \   'repeat'  : 0,
        \ })
  "---------------------------------------------------------------------------
  return behavs
endfunction

" }}}1
"=============================================================================
" INITIALIZATION {{{1

"-----------------------------------------------------------------------------
call l9#defineVariableDefault('g:acp_enableAtStartup', 1)
call l9#defineVariableDefault('g:acp_mappingDriven', 0)
call l9#defineVariableDefault('g:acp_ignorecaseOption', 1)
call l9#defineVariableDefault('g:acp_completeOption', '.,w,b,k')
call l9#defineVariableDefault('g:acp_completeoptPreview', 0)
call l9#defineVariableDefault('g:acp_behaviorUserDefinedFunction', '')
call l9#defineVariableDefault('g:acp_behaviorUserDefinedMeets', '')
call l9#defineVariableDefault('g:acp_behaviorSnipmateLength', -1)
call l9#defineVariableDefault('g:acp_behaviorKeywordCommand', "\<C-n>")
call l9#defineVariableDefault('g:acp_behaviorKeywordLength', 2)
call l9#defineVariableDefault('g:acp_behaviorKeywordIgnores', [])
call l9#defineVariableDefault('g:acp_behaviorFileLength', 0)
call l9#defineVariableDefault('g:acp_behaviorRubyOmniMethodLength', 0)
call l9#defineVariableDefault('g:acp_behaviorRubyOmniSymbolLength', 1)
call l9#defineVariableDefault('g:acp_behaviorPythonOmniLength', 0)
call l9#defineVariableDefault('g:acp_behaviorPerlOmniLength', -1)
call l9#defineVariableDefault('g:acp_behaviorXmlOmniLength', 0)
call l9#defineVariableDefault('g:acp_behaviorHtmlOmniLength', 0)
call l9#defineVariableDefault('g:acp_behaviorCssOmniPropertyLength', 1)
call l9#defineVariableDefault('g:acp_behaviorCssOmniValueLength', 0)
call l9#defineVariableDefault('g:acp_behavior', {})
"-----------------------------------------------------------------------------
call extend(g:acp_behavior, s:makeDefaultBehavior(), 'keep')
"-----------------------------------------------------------------------------
command! -bar -narg=0 AcpEnable  call acp#enable()
command! -bar -narg=0 AcpDisable call acp#disable()
command! -bar -narg=0 AcpLock    call acp#lock()
command! -bar -narg=0 AcpUnlock  call acp#unlock()
"-----------------------------------------------------------------------------
" legacy commands
command! -bar -narg=0 AutoComplPopEnable  AcpEnable
command! -bar -narg=0 AutoComplPopDisable AcpDisable
command! -bar -narg=0 AutoComplPopLock    AcpLock
command! -bar -narg=0 AutoComplPopUnlock  AcpUnlock
"-----------------------------------------------------------------------------
if g:acp_enableAtStartup
  AcpEnable
endif
"-----------------------------------------------------------------------------

" }}}1
"=============================================================================
" vim: set fdm=marker:
