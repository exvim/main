@echo off

xcopy /Y .vimrc %HOMEPATH%\.vimrc
xcopy /Y .vimrc.plugins %HOMEPATH%\.vimrc.plugins
rmdir /S /Q %HOMEPATH%\.vim
xcopy /Y /E vimfiles %HOMEPATH%\.vim\

@echo on
