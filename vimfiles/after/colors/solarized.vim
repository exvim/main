if &background == "light"
  " NOTE: keep visual mode words still using its own syntax color  
  " hi Visual gui=NONE guifg=NONE guibg=#93a1a1

  " showmarks highlight
  " =============================

  " For marks a-z
  hi clear ShowMarksHLl
  hi ShowMarksHLl term=bold cterm=none ctermbg=grey gui=none guibg=grey

  " For marks A-Z
  hi clear ShowMarksHLu
  hi ShowMarksHLu term=bold cterm=bold ctermbg=lightred ctermfg=darkred gui=bold guibg=lightred guifg=darkred
else
  " NOTE: keep visual mode words still using its own syntax color  
  hi Visual gui=NONE guifg=NONE guibg=#004b56

  " showmarks highlight
  " =============================

  " For marks a-z
  hi clear ShowMarksHLl
  hi ShowMarksHLl term=bold cterm=none ctermbg=lightblue gui=none guibg=#eee8d5

  " For marks A-Z
  hi clear ShowMarksHLu
  hi ShowMarksHLu term=bold cterm=bold ctermbg=lightred ctermfg=darkred gui=bold guibg=lightred guifg=darkred
endif

" vim:ts=2:sw=2:sts=2
