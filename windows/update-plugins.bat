@echo off
vim -u .vimrc.mini --cmd "set rtp=./vimfiles,$VIMRUNTIME,./vimfiles/after" +PluginClean +PluginUpdate +qall
@echo on
