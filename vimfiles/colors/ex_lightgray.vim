" ======================================================================================
" File         : ex_lightgray.vim
" Author       : Wu Jie 
" Last Change  : 05/30/2009 | 19:28:39 PM | Saturday,May
" Description  : exdev gray color scheme 
" ======================================================================================

" /////////////////////////////////////////////////////////////////////////////
"  prepare 
" /////////////////////////////////////////////////////////////////////////////

" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
set background=light

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

let colors_name = "ex_lightgray"

" /////////////////////////////////////////////////////////////////////////////
"  Color Define 
" /////////////////////////////////////////////////////////////////////////////

hi Normal       guibg=LightGray

hi SpecialKey   term=bold ctermfg=1 guifg=Blue
hi NonText      term=bold ctermfg=9 gui=bold guifg=Blue
hi Directory    term=bold ctermfg=1 guifg=Blue
hi ErrorMsg     term=standout ctermfg=15 ctermbg=4 guifg=White guibg=Red
hi IncSearch    term=reverse cterm=reverse gui=reverse
hi Search       term=reverse ctermfg=0 ctermbg=14 guifg=NONE guibg=LightYellow
hi MoreMsg      term=bold ctermfg=2 gui=bold guifg=SeaGreen
hi ModeMsg      term=bold cterm=bold gui=bold
hi LineNr       term=underline cterm=none ctermfg=DarkRed gui=none guifg=Brown
hi Question     term=standout ctermfg=2 gui=bold guifg=SeaGreen
hi StatusLine   term=bold,reverse cterm=bold,reverse gui=bold,reverse
hi StatusLineNC term=reverse cterm=reverse gui=reverse
hi VertSplit    term=reverse cterm=reverse gui=reverse
hi Title        term=bold ctermfg=5 gui=bold guifg=Magenta
hi Visual       term=reverse ctermbg=Gray guibg=Gray
hi VisualNOS    term=bold,underline cterm=bold,underline gui=bold,underline
hi WarningMsg   term=standout ctermfg=4 guifg=Red
hi WildMenu     term=standout ctermfg=0 ctermbg=14 guifg=Black guibg=Yellow
hi Folded       term=standout ctermfg=1 ctermbg=7 guifg=DarkBlue guibg=Gray
hi FoldColumn   term=standout ctermfg=1 ctermbg=7 guifg=DarkBlue guibg=Gray
hi DiffAdd      cterm=none ctermbg=LightGreen gui=none guibg=LightGreen
hi DiffChange   term=bold cterm=none ctermbg=LightCyan gui=none guibg=LightCyan
hi DiffDelete   term=bold cterm=bold ctermfg=Red ctermbg=LightRed gui=bold guifg=Red guibg=LightRed
hi DiffText     term=reverse cterm=underline ctermbg=LightCyan gui=none guibg=Violet
hi SignColumn   term=standout ctermfg=1 ctermbg=7 guifg=DarkBlue guibg=Grey
hi SpellBad     term=reverse ctermbg=12 gui=undercurl guisp=Red
hi SpellCap     term=reverse ctermbg=9 gui=undercurl guisp=Blue
hi SpellRare    term=reverse ctermbg=13 gui=undercurl guisp=Magenta
hi SpellLocal   term=underline ctermbg=11 gui=undercurl guisp=DarkCyan
hi Pmenu        ctermbg=Gray guibg=Gray
hi PmenuSel     ctermbg=DarkBlue ctermfg=White guibg=DarkBlue guifg=White
hi PmenuSbar    ctermbg=DarkGray guibg=DarkGray
hi PmenuThumb   ctermbg=Black guibg=Black
hi TabLine      term=underline cterm=underline ctermfg=0 ctermbg=7 gui=underline guibg=LightGrey
hi TabLineSel   term=bold cterm=bold gui=bold
hi TabLineFill  term=reverse cterm=reverse gui=reverse
hi CursorColumn term=reverse cterm=none ctermbg=LightCyan gui=none guibg=#bfffff
hi CursorLine   term=reverse cterm=none ctermbg=LightCyan gui=none guibg=#bfffff 
hi Cursor       guifg=bg guibg=fg
hi lCursor      guifg=bg guibg=fg
hi MatchParen   term=reverse ctermbg=11 guibg=Cyan
hi Comment      term=bold ctermfg=2 guifg=DarkGreen
hi Constant     term=underline ctermfg=4 guifg=Brown
hi Special      term=bold ctermfg=11 guifg=SlateBlue
hi Identifier   term=underline ctermfg=3 guifg=DarkCyan
hi Statement    term=bold ctermfg=1 guifg=Blue
hi PreProc      term=underline ctermfg=5 guifg=Purple
hi Type         term=underline ctermfg=1 guifg=Blue
hi Underlined   term=underline cterm=underline ctermfg=11 gui=underline guifg=SlateBlue
hi Ignore       ctermfg=15 guifg=bg
hi Error        term=reverse ctermfg=15 ctermbg=12 guifg=White guibg=Red
hi Todo         term=standout ctermfg=0 ctermbg=14 guifg=Blue guibg=Yellow

" vim: sw=2
