if &background == "dark"
    " NOTE: keep visual mode words still using its own syntax color  
    hi Visual gui=NONE guifg=NONE guibg=#004b56
    hi clear exCommentLable
    hi link exCommentLable ErrorMsg

    " showmarks highlight
    " =============================

    " For marks a-z
    hi clear ShowMarksHLl
    hi default ShowMarksHLl term=bold cterm=none ctermbg=lightblue gui=none guibg=#eee8d5

    " For marks A-Z
    hi clear ShowMarksHLu
    hi default ShowMarksHLu term=bold cterm=bold ctermbg=lightred ctermfg=darkred gui=bold guibg=lightred guifg=darkred

    " EX_HL_label
    " =============================

    hi clear EX_HL_cursorhl
    hi default EX_HL_cursorhl gui=none guibg=darkgray term=none cterm=none ctermbg=darkgray

    hi clear EX_HL_label1
    hi default EX_HL_label1 gui=none guibg=lightcyan term=none cterm=none ctermbg=darkcyan
    
    hi clear EX_HL_label2
    hi default EX_HL_label2 gui=none guibg=lightmagenta term=none cterm=none ctermbg=darkmagenta

    hi clear EX_HL_label3
    hi default EX_HL_label3 gui=none guibg=lightred term=none cterm=none ctermbg=darkred

    hi clear EX_HL_label4
    hi default EX_HL_label4 gui=none guibg=lightgreen term=none cterm=none ctermbg=darkgreen
else
    " NOTE: keep visual mode words still using its own syntax color  
    " hi Visual gui=NONE guifg=NONE guibg=#93a1a1
    hi clear exCommentLable
    hi link exCommentLable ErrorMsg

    " showmarks highlight
    " =============================

    " For marks a-z
    hi clear ShowMarksHLl
    hi default ShowMarksHLl term=bold cterm=none ctermbg=grey gui=none guibg=grey

    " For marks A-Z
    hi clear ShowMarksHLu
    hi default ShowMarksHLu term=bold cterm=bold ctermbg=lightred ctermfg=darkred gui=bold guibg=lightred guifg=darkred

    " EX_HL_label
    " =============================

    hi clear EX_HL_cursorhl
    hi default EX_HL_cursorhl gui=none guibg=White term=none cterm=none ctermbg=white 

    hi clear EX_HL_label1
    hi default EX_HL_label1 gui=none guibg=lightcyan term=none cterm=none ctermbg=lightcyan

    hi clear EX_HL_label2
    hi default EX_HL_label2 gui=none guibg=lightmagenta term=none cterm=none ctermbg=lightmagenta

    hi clear EX_HL_label3
    hi default EX_HL_label3 gui=none guibg=lightred term=none cterm=none ctermbg=lightred

    hi clear EX_HL_label4
    hi default EX_HL_label4 gui=none guibg=lightgreen term=none cterm=none ctermbg=lightgreen
endif

" vim:ts=4:sw=4:sts=4 et fdm=marker:
