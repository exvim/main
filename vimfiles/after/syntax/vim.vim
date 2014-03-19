silent exec ':syn keyword vimTodo contained ' . g:ex_todo_keyword
silent exec ':syn keyword exCommentLable contained ' . g:ex_comment_lable_keyword
syn cluster vimCommentGroup	contains=vimTodo,exCommentLable,@Spell

" finish
let b:current_syntax = "vim"

" vim:ts=4:sw=4:sts=4 et fdm=marker:
