" variables {{{1
if !exists('g:ex_todo_keyword')
    let g:ex_todo_keyword = '
                \ NOTE
                \ WARN
                \ WARN
                \ EXAMPLE
                \ TIPS
                \ REF
                \ '
endif
if !exists('g:ex_comment_lable_keyword')
    let g:ex_comment_lable_keyword = '
                \ TEMP
                \ MODIFY
                \ ADD
                \ DELME
                \ DISABLE
                \ DEBUG
                \ TEST
                \ FIXME
                \ BUG
                \ HACK
                \ HARDCODE
                \ REFINE
                \ REFACTORY
                \ '
endif
" }}}

" vim:ts=4:sw=4:sts=4 et fdm=marker:
