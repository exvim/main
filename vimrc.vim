" ======================================================================================
" File         : .vimrc
" Author       : Wu Jie 
" Last Change  : 12/02/2009 | 12:02:28 PM | Wednesday,December
" Description  : 
" ======================================================================================

"/////////////////////////////////////////////////////////////////////////////
" Vundle setup
"/////////////////////////////////////////////////////////////////////////////

set nocompatible " be iMproved, required
filetype off " required

" set the runtime path to include Vundle and initialize
if exists('g:exvim_dev')
    set rtp+=./vimfiles/bundle/vundle/
    let path='./vimfiles/bundle/'
    call vundle#rc(path)
else
    set rtp+=~/.vim/bundle/vundle/
    let path='~/.vim/bundle/'
    call vundle#rc(path)
endif

filetype plugin indent on " required

"/////////////////////////////////////////////////////////////////////////////
" General
"/////////////////////////////////////////////////////////////////////////////

set langmenu=none " always use English menu

" always use english for anaything in vim-editor. 
if has ("win32")
    silent exec "language english" 
elseif has ("mac")
    silent exec "language en_US" 
else
    " in mac-terminal
    silent exec "language en_US"

    " in linux-terminal
    " silent exec "language en_US.utf8" 
endif

"set path=.,/usr/include/*,, " where gf, ^Wf, :find will search 
set backup " make backup file and leave it around 

" setup back and swap directory
let data_dir = $HOME.'/.data/'
let backup_dir = data_dir . 'backup' 
let swap_dir = data_dir . 'swap' 
if finddir(data_dir) == ''
    silent call mkdir(data_dir)
endif
if finddir(backup_dir) == ''
    silent call mkdir(backup_dir)
endif
if finddir(swap_dir) == ''
    silent call mkdir(swap_dir)
endif
unlet backup_dir
unlet swap_dir
unlet data_dir

set backupdir=$HOME/.data/backup " where to put backup file 
set directory=$HOME/.data/swap " where to put swap file 

" Redefine the shell redirection operator to receive both the stderr messages and stdout messages
set shellredir=>%s\ 2>&1
set history=50 " keep 50 lines of command line history
set updatetime=1000 " default = 4000
set autoread " auto read same-file change ( better for vc/vim change )
set maxmempattern=1000 " enlarge maxmempattern from 1000 to ... (2000000 will give it without limit)

"/////////////////////////////////////////////////////////////////////////////
" xterm settings
"/////////////////////////////////////////////////////////////////////////////

behave xterm  " set mouse behavior as xterm
if &term =~ "xterm"
    set mouse=a
endif

"/////////////////////////////////////////////////////////////////////////////
" Variable settings ( set all )
"/////////////////////////////////////////////////////////////////////////////
  
" ------------------------------------------------------------------ 
" Desc: Visual
" ------------------------------------------------------------------ 

set showmatch " show matching paren 
set matchtime=0 " 0 second to show the matching paren ( much faster )
set nu " Show LineNumber
set scrolloff=0 " minimal number of screen lines to keep above and below the cursor 
set nowrap " I don't like wrap, cause in split window mode, it feel strange

" only supoort in 7.3 or higher
if v:version >= 703
    set noacd " no autochchdir
endif

" set vim window open size
if has("gui_running")
    if has("win32")
        " au GUIEnter * simalt ~x " Maximize window when enter vim
        " set a fixed size of vim
        if exists("+lines")
            set lines=55
        endif
        if exists("+columns")
            set columns=125
        endif
    elseif has("unix")
        " TODO: no way right now
    endif
endif

" set default guifont
if has("gui_running")
    " check and determine the gui font after GUIEnter. 
    " NOTE: getfontname function only works after GUIEnter.  
    au GUIEnter * call s:set_gui_font()

    " set guifont
    function s:set_gui_font()
        if has("gui_gtk2")
            set guifont=Luxi\ Mono\ 13
        elseif has("x11")
            " Also for GTK 1
            set guifont=*-lucidatypewriter-medium-r-normal-*-*-180-*-*-m-*-*
        elseif has("mac")
            if getfontname( "Bitstream_Vera_Sans_Mono" ) != ""
                set guifont=Bitstream\ Vera\ Sans\ Mono:h13
            elseif getfontname( "DejaVu\ Sans\ Mono" ) != ""
                set guifont=DejaVu\ Sans\ Mono:h13
            endif
        elseif has("gui_win32")
            let font_name = ""
            if getfontname( "Bitstream_Vera_Sans_Mono" ) != ""
                set guifont=Bitstream_Vera_Sans_Mono:h12:cANSI
                let font_name = "Bitstream_Vera_Sans_Mono" 
            elseif getfontname( "Consolas" ) != ""
                set guifont=Consolas:h12:cANSI " this is the default visual studio font
                let font_name = "Consolas" 
            else
                set guifont=Lucida_Console:h12:cANSI
                let font_name = "Lucida_Console" 
            endif
            silent exec "nnoremap <unique> <M-F1> :set guifont=".font_name.":h11:cANSI<CR>"
        endif
    endfunction
endif

" color scheme define
if has("gui_running")
    " silent exec "colorscheme ex"
    silent exec "colorscheme ex_lightgray"
else " if we are in terminal mode
    " NOTE: you cannot use if has('mac') to detect platform in terminal mode.
    silent exec "colorscheme default"
    " silent exec "colorscheme darkblue"
endif

" ------------------------------------------------------------------ 
" Desc: Vim UI
" ------------------------------------------------------------------ 

set wildmenu " turn on wild menu, try typing :h and press <Tab> 
set showcmd	" display incomplete commands
set cmdheight=1 " 1 screen lines to use for the command-line 
set ruler " show the cursor position all the time
set hid " allow to change buffer without saving 
set shortmess=atI " shortens messages to avoid 'press a key' prompt 
set lazyredraw " do not redraw while executing macros (much faster) 
set display+=lastline " for easy browse last line with wrap text
set laststatus=2 " always have status-line
" TODO: set statusline=    " statusline with different color 'User1-9'

" Set window's width to 130 columns and height to 40 rows
" (if it's GUI)
if has("gui_running")
    set lines=40 columns=130
endif

set showfulltag " show tag with function protype.
set guioptions+=b " Present the bottom scrollbar when the longest visible line exceen the window

" disable menu & toolbar
set guioptions-=m
set guioptions-=T

"set encoding=japan
"set termencoding=cp932

"set encoding=cp932
"set termencoding=cp932

"set grepprg=grep\ -n

" set default encoding to utf-8
set encoding=utf-8
set termencoding=utf-8

" ------------------------------------------------------------------ 
" Desc: Text edit
" ------------------------------------------------------------------ 

set ai " autoindent 
set si " smartindent 
set backspace=indent,eol,start " allow backspacing over everything in insert mode
" indent options
"  see help cinoptions-values for more details
set	cinoptions=>s,e0,n0,f0,{0,}0,^0,:0,=s,l0,b0,g0,hs,ps,ts,is,+s,c3,C0,0,(0,us,U0,w0,W0,m0,j0,)20,*30
" default '0{,0},0),:,0#,!^F,o,O,e' disable 0# for not ident preprocess
" set cinkeys=0{,0},0),:,!^F,o,O,e

" Official diff settings
set diffexpr=s:my_diff()
function s:my_diff()
    let opt = '-a --binary -w '
    if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
    if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
    let arg1 = v:fname_in
    if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
    let arg2 = v:fname_new
    if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
    let arg3 = v:fname_out
    if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
    silent execute '!' .  'diff ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
endfunction

set cindent shiftwidth=4 " Set cindent on to autoinent when editing C/C++ file, with 4 shift width
set tabstop=4 " Set tabstop to 4 characters
set expandtab " Set expandtab on, the tab will be change to space automaticaly

" Set Number format to null(default is octal) , when press CTRL-A on number
" like 007, it would not become 010
set nf=
" In Visual Block Mode, cursor can be positioned where there is no actual character
set ve=block

" ------------------------------------------------------------------ 
" Desc: Fold text
" ------------------------------------------------------------------ 

set foldmethod=marker foldmarker={,} foldlevel=9999
set diffopt=filler,context:9999

" ------------------------------------------------------------------ 
" Desc: Search
" ------------------------------------------------------------------ 

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
    syntax on
    set hlsearch
endif
set incsearch " do incremental searching
set ignorecase " Set search/replace pattern to ignore case 
set smartcase " Set smartcase mode on, If there is upper case character in the search patern, the 'ignorecase' option will be override.

" set this to use id-utils for global search
set grepprg=lid\ -Rgrep\ -s
set grepformat=%f:%l:%m

" ------------------------------------------------------------------ 
" Desc: Syntax
" ------------------------------------------------------------------ 

let c_gnu = 1
let c_no_curly_error = 1
"let c_no_bracket_error = 1

"/////////////////////////////////////////////////////////////////////////////
" Auto Command
"/////////////////////////////////////////////////////////////////////////////

" ------------------------------------------------------------------ 
" Desc: Only do this part when compiled with support for autocommands.
" ------------------------------------------------------------------ 

if has("autocmd")

    " ------------------------------------------------------------------ 
    " Desc: Buffer
    " ------------------------------------------------------------------ 

    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    " (happens when dropping a file on gvim).
    au BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \   exe "normal g`\"" |
                \ endif
    au BufNewFile,BufEnter * set cpoptions+=d " NOTE: ctags find the tags file from the current path instead of the path of currect file
    au BufEnter * :syntax sync fromstart " ensure every file does syntax highlighting (full) 
    au BufNewFile,BufRead *.avs set syntax=avs " for avs syntax file.

    " DISABLE { 
    " NOTE: will have problem with exvim, because exvim use exES_CWD as working directory for tag and other thing
    " Change current directory to the file of the buffer ( from Script#65"CD.vim"
    " au   BufEnter *   execute ":lcd " . expand("%:p:h") 
    " } DISABLE end 

    " ------------------------------------------------------------------ 
    " Desc: file types 
    " ------------------------------------------------------------------ 

    au FileType text setlocal textwidth=78 " For all text files set 'textwidth' to 78 characters.
    au FileType c,cpp,cs,swig set nomodeline " this will avoid bug in my project with namespace ex, the vim will tree ex:: as modeline.

    " Disable auto-comment for c/cpp, lua, javascript, c# and vim-script
    au FileType c,cpp,java,javascript set comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,f:// 
    au FileType cs set comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,f:///,f:// 
    au FileType vim set comments=sO:\"\ -,mO:\"\ \ ,eO:\"\",f:\"
    au FileType lua set comments=f:--

    " if edit python scripts, check if have \t. ( python said: the programme can only use \t or not, but can't use them together )
    au FileType python call s:check_if_expand_tab()
    function s:check_if_expand_tab()
        let has_noexpandtab = search('^\t','wn')
        let has_expandtab = search('^    ','wn')

        "
        if has_noexpandtab && has_expandtab
            let idx = inputlist ( ["ERROR: current file exists both expand and noexpand TAB, python can only use one of these two mode in one file.\nSelect Tab Expand Type:",
                        \ '1. expand (tab=space, recommended)', 
                        \ '2. noexpand (tab=\t, currently have risk)',
                        \ '3. do nothing (I will handle it by myself)'])
            let tab_space = printf('%*s',&tabstop,'')
            if idx == 1
                let has_noexpandtab = 0
                let has_expandtab = 1
                silent exec '%s/\t/' . tab_space . '/g'
            elseif idx == 2
                let has_noexpandtab = 1
                let has_expandtab = 0
                silent exec '%s/' . tab_space . '/\t/g'
            else
                return
            endif
        endif

        " 
        if has_noexpandtab == 1 && has_expandtab == 0  
            echomsg 'substitute space to TAB...'
            set noexpandtab
            echomsg 'done!'
        elseif has_noexpandtab == 0 && has_expandtab == 1
            echomsg 'substitute TAB to space...'
            set expandtab
            echomsg 'done!'
        else
            " it may be a new file
            " we use original vim setting
        endif
    endfunction

endif " has("autocmd")

"/////////////////////////////////////////////////////////////////////////////
" Key Mappings
"/////////////////////////////////////////////////////////////////////////////

" NOTE: F10 looks like have some feature, when map with F10, the map will take no effects

" Don't use Ex mode, use Q for formatting
map Q gq  

" define the copy/paste judged by clipboard
if &clipboard ==# "unnamed"
    " fix the visual paste bug in vim
    " vnoremap <silent>p :call g:()<CR>
else
    " general copy/paste.
    " NOTE: y,p,P could be mapped by other key-mapping
    map <unique> <leader>y "*y
    map <unique> <leader>p "*p
    map <unique> <leader>P "*P
endif

" F8:  Set Search pattern highlight on/off
nnoremap <unique> <F8> :let @/=""<CR>

" map Ctrl-Tab to switch window
nnoremap <unique> <S-Up> <C-W><Up>
nnoremap <unique> <S-Down> <C-W><Down>
nnoremap <unique> <S-Left> <C-W><Left>
nnoremap <unique> <S-Right> <C-W><Right>

" Easy Diff goto
noremap <unique> <C-Up> [c
noremap <unique> <C-k> [c
noremap <unique> <C-Down> ]c
noremap <unique> <C-j> ]c

" Enhance '<' '>' , do not need to reselect the block after shift it.
vnoremap <unique> < <gv
vnoremap <unique> > >gv

" map Up & Down to gj & gk, helpful for wrap text edit
noremap <unique> <Up> gk
noremap <unique> <Down> gj

" VimTip 329: A map for swapping words
" http://vim.sourceforge.net/tip_view.php?tip_id=
" Then when you put the cursor on or in a word, press "\sw", and
" the word will be swapped with the next word.  The words may
" even be separated by punctuation (such as "abc = def").
nnoremap <unique> <silent><leader>sw "_yiw:s/\(\%#\w\+\)\(\W\+\)\(\w\+\)/\3\2\1/<cr><c-o>

"/////////////////////////////////////////////////////////////////////////////
" plugins
"/////////////////////////////////////////////////////////////////////////////

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" vim-airline
Bundle 'bling/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" ctrlp
Bundle 'kien/ctrlp.vim'
let g:ctrlp_working_path_mode = ''
