" ======================================================================================
" File         : filetype.vim
" Author       : Wu Jie 
" Last Change  : 03/14/2014 | 02:16:33 AM | Friday,March
" Description  : Vim support file to overrule default file types
" ======================================================================================

" /////////////////////////////////////////////////////////////////////////////
"   au defines
" /////////////////////////////////////////////////////////////////////////////

" additional cpp file type
au BufRead,BufNewFile *.ipp setf cpp

" additional objc file type
au BufRead,BufNewFile *.mm setf objc

" High Level Shader Language
au BufRead,BufNewFile *.hlsl,*.fx,*.fxh,*.cg,*.vsh,*.psh,*.shd,*.glsl,*.shader setf hlsl

" Max Script
au BufRead,BufNewFile *.ms,*.mse,*.mcr,*.mzp,*.ds setf maxscript

" Doxygen Comment
au BufRead,BufNewFile *.dox,*.doxygen setf cpp.doxygen

" gmsh
au BufRead,BufNewFile *.geo setf gmsh

" as (actionscript/flash)
au BufRead,BufNewFile *.as setf javascript

" nsis
au BufRead,BufNewFile *.nsh setf nsis

" swig
au BufRead,BufNewFile *.i,*.swg setf swig 

" cs
au BufRead,BufNewFile *.tt setf cs 

" treat gitignore file as config file
au BufRead,BufNewFile *.gitignore setf cfg 

" lua 
au BufRead,BufNewFile *.wlua setf lua 

" proto
au BufRead,BufNewFile *.proto setf proto

" Matlab file or Objective C
au BufRead,BufNewFile *.m call s:setf_m()
func! s:setf_m()
    let n = 1
    while n < 10
        let line = getline(n)
        if line =~ '^\s*\(#\s*\(include\|import\)\>\|\/\*\|^\/\/\)'
            setf objc
            return
        endif
        if line =~ '^\s*%'
            setf matlab
            return
        endif
        if line =~ '^\s*(\*'
            setf mma
            return
        endif
        let n = n + 1
    endwhile
    if exists("g:filetype_m")
        exe "setf " . g:filetype_m
    else
        setf matlab
    endif
endfunc
