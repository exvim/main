
" For marks a-z
hi clear ShowMarksHLl
hi default ShowMarksHLl term=bold cterm=none ctermbg=lightblue gui=none guibg=lightblue

" For marks A-Z
hi clear ShowMarksHLu
hi default ShowMarksHLu term=bold cterm=bold ctermbg=lightred ctermfg=darkred gui=bold guibg=lightred guifg=darkred

hi clear EX_HL_cursorhl
hi default EX_HL_cursorhl gui=none guibg=White term=none cterm=none ctermbg=white 

" easyhl
hi clear EX_HL_label1
hi default EX_HL_label1 gui=none guibg=lightcyan term=none cterm=none ctermbg=lightcyan

hi clear EX_HL_label2
hi default EX_HL_label2 gui=none guibg=lightmagenta term=none cterm=none ctermbg=lightmagenta

hi clear EX_HL_label3
hi default EX_HL_label3 gui=none guibg=lightred term=none cterm=none ctermbg=lightred

hi clear EX_HL_label4
hi default EX_HL_label4 gui=none guibg=lightgreen term=none cterm=none ctermbg=lightgreen

" exproject
hi clear ex_pj_tree_line
hi default ex_pj_tree_line gui=none guifg=darkgray term=none cterm=none ctermfg=gray

hi clear ex_pj_folder_label
hi default ex_pj_folder_label gui=bold guifg=brown term=bold cterm=bold ctermfg=darkred

hi clear ex_pj_folder_name
hi link ex_pj_folder_name Normal

hi clear ex_pj_file_label
hi default ex_pj_file_label gui=none guifg=magenta term=none cterm=none ctermfg=magenta
" hi link ex_pj_filter gui=none guifg=darkcyan term=none cterm=none ctermfg=darkcyan

hi clear ex_pj_clang_src_label
hi default ex_pj_clang_src_label gui=none guifg=blue term=none cterm=none ctermfg=blue

hi clear ex_pj_clang_header_label
hi default ex_pj_clang_header_label gui=none guifg=darkgreen term=none cterm=none ctermfg=darkgreen

hi clear ex_pj_error_file_label Error
hi default ex_pj_error_file_label gui=none guifg=red term=none cterm=none ctermfg=red
