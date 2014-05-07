#!/bin/bash

cp ./dist/ctags_lang ~/.ctags
cp .vimrc ~/.vimrc
cp .vimrc.plugins ~/.vimrc.plugins
rm -rf ~/.vim
cp -r vimfiles ~/.vim
