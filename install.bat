@echo off
set ORIGINAL_PATH=%~pd0

echo Check and install Vundle.

rem if we don't have folder vimfiles, create it.
if not exist .\vimfiles\ (mkdir .\vimfiles\)
cd .\vimfiles\

rem if we don't have bundle, create it.
if not exist .\bundle\ (mkdir .\bundle\)
cd .\bundle\

rem download or update vundle in ./vimfiles/bundle/
if not exist .\vundle\ (git clone https://github.com/gmarik/vundle.git vundle)

rem download and install bundles through Vundle in this repository
echo Update vim-plugins.
cd %ORIGINAL_PATH%
start /B /WAIT vim -u .vimrc --cmd "let g:exvim_dev=1" --cmd "set rtp=.\vimfiles,$VIMRUNTIME,.\vimfiles\after" +PluginInstall +qall

rem NOTE: Windows will stop batch after other process running
