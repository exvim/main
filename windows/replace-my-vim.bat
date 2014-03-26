@echo off

REM  Reference: http://www.wilsonmar.com/1envvars.htm
set home=%USERPROFILE%

copy /Y .vimrc %home%\.vimrc
copy /Y .vimrc.plugins %home%\.vimrc.plugins
rmdir /S /Q %home%\.vim
xcopy /Y /E vimfiles %home%\.vim\

@echo on
