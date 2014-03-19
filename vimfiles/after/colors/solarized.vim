if &background == "dark"
    " NOTE: keep visual mode words still using its own syntax color  
    hi Visual gui=NONE guifg=NONE guibg=#004b56

    " showmarks highlight
    " =============================

    " For marks a-z
    hi clear ShowMarksHLl
    hi default ShowMarksHLl term=bold cterm=none ctermbg=lightblue gui=none guibg=#eee8d5

    " For marks A-Z
    hi clear ShowMarksHLu
    hi default ShowMarksHLu term=bold cterm=bold ctermbg=lightred ctermfg=darkred gui=bold guibg=lightred guifg=darkred

    " ex_easyhl
    " =============================

    hi clear ex_easyhl_cursorhl
    hi default ex_easyhl_cursorhl gui=none guibg=darkgray term=none cterm=none ctermbg=darkgray

    hi clear ex_easyhl1
    hi default ex_easyhl1 gui=none guibg=lightcyan term=none cterm=none ctermbg=darkcyan
    
    hi clear ex_easyhl2
    hi default ex_easyhl2 gui=none guibg=lightmagenta term=none cterm=none ctermbg=darkmagenta

    hi clear ex_easyhl3
    hi default ex_easyhl3 gui=none guibg=lightred term=none cterm=none ctermbg=darkred

    hi clear ex_easyhl4
    hi default ex_easyhl4 gui=none guibg=lightgreen term=none cterm=none ctermbg=darkgreen
else
    " NOTE: keep visual mode words still using its own syntax color  
    " hi Visual gui=NONE guifg=NONE guibg=#93a1a1

    " showmarks highlight
    " =============================

    " For marks a-z
    hi clear ShowMarksHLl
    hi default ShowMarksHLl term=bold cterm=none ctermbg=grey gui=none guibg=grey

    " For marks A-Z
    hi clear ShowMarksHLu
    hi default ShowMarksHLu term=bold cterm=bold ctermbg=lightred ctermfg=darkred gui=bold guibg=lightred guifg=darkred

    " ex_easyhl
    " =============================

    hi clear ex_easyhl_cursorhl
    hi default ex_easyhl_cursorhl gui=none guibg=White term=none cterm=none ctermbg=white 

    hi clear ex_easyhl1
    hi default ex_easyhl1 gui=none guibg=lightcyan term=none cterm=none ctermbg=lightcyan

    hi clear ex_easyhl2
    hi default ex_easyhl2 gui=none guibg=lightmagenta term=none cterm=none ctermbg=lightmagenta

    hi clear ex_easyhl3
    hi default ex_easyhl3 gui=none guibg=lightred term=none cterm=none ctermbg=lightred

    hi clear ex_easyhl4
    hi default ex_easyhl4 gui=none guibg=lightgreen term=none cterm=none ctermbg=lightgreen
endif

" vim:ts=4:sw=4:sts=4 et fdm=marker:
