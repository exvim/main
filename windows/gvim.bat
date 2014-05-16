@echo off
set cwd=%cd%
gvim ^
    -u %cwd%\.vimrc ^
    --cmd "let g:exvim_custom_path='%cwd%'" ^
    --cmd "set runtimepath=%cwd%\vimfiles,$VIMRUNTIME,%cwd%\vimfiles\after" ^
    %1
@echo on
