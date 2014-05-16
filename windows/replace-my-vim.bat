@echo off

REM  Reference: http://www.wilsonmar.com/1envvars.htm
set home=%USERPROFILE%

copy /Y .\dist\ctags_lang %home%\.ctags
copy /Y .vimrc %home%\.vimrc
copy /Y .vimrc.plugins %home%\.vimrc.plugins
copy /Y .vimrc.local %home%\.vimrc.local
copy /Y .vimrc.plugins.local %home%\.vimrc.plugins.local
rmdir /S /Q %home%\.vim
xcopy /Y /E vimfiles %home%\.vim\

@echo on
