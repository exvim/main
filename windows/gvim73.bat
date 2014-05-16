@echo off
set cwd=%cd%
"c:\Program Files\Vim\vim73\gvim" ^
    -u %cwd%\.vimrc ^
    --cmd "let g:exvim_custom_path='%cwd%'" ^
    --cmd "set runtimepath=%cwd%\vimfiles,$VIMRUNTIME,%cwd%\vimfiles\after" ^
    %1
@echo on
