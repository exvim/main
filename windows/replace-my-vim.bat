@echo off
rem TODO: TESTME

cp .vimrc ~/.vimrc
cp .vimrc.plugins ~/.vimrc.plugins
rm -rf ~/.vim
cp -r vimfiles ~/.vim

@echo on
