@echo off

set HOME=%HOMEDRIVE%%HOMEPATH%

xcopy /Y .vimrc %HOME%\.vimrc
xcopy /Y .vimrc.plugins %HOME%\vimrc.plugins
rmdir /S /Q %HOME%\.vim
xcopy /Y /E vimfiles %HOME%\.vim\

@echo on
