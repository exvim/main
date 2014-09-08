@echo off
set ORIGINAL_PATH=%cd%

echo Check and install Vundle.

rem if we don't have folder vimfiles, create it.
if not exist .\vimfiles\ (mkdir .\vimfiles\)
cd .\vimfiles\

rem if we don't have bundle, create it.
if not exist .\bundle\ (mkdir .\bundle\)
cd .\bundle\

rem download or update vundle in ./vimfiles/bundle/
if not exist .\vundle\ (git clone https://github.com/gmarik/Vundle.vim Vundle.vim)

rem download and install bundles through Vundle in this repository
echo Update vim-plugins.
cd %ORIGINAL_PATH%
start /B /WAIT vim -u .vimrc.mini --cmd "set rtp=.\vimfiles,$VIMRUNTIME,.\vimfiles\after" +PluginClean +PluginUpdate +qall

rem NOTE: Windows will stop batch after other process running
@echo on
