#!/bin/bash

export ORIGINAL_PATH=`pwd`

echo "Check and install Vundle."

# if we don't have folder vimfiles, create it.
if [ ! -d "./vimfiles/" ]; then
    mkdir ./vimfiles/
fi
cd ./vimfiles/

# if we don't have bundle, create it.
if [ ! -d "./bundle/" ]; then
    mkdir ./bundle/
fi
cd ./bundle/

# download or update vundle in ./vimfiles/bundle/
if [ ! -d "./Vundle.vim/" ]; then
    git clone https://github.com/gmarik/Vundle.vim Vundle.vim
fi

# download and install bundles through Vundle in this repository
echo "Update vim-plugins."
cd ${ORIGINAL_PATH}
vim -u .vimrc.mini --cmd "set rtp=./vimfiles,\$VIMRUNTIME,./vimfiles/after" +PluginClean +PluginUpdate +qall

# go back
cd ${ORIGINAL_PATH}

#
echo "|"
echo "exVim installed successfully!"
echo "|"
echo "You can run 'sh unix/gvim.sh' to preview exVim."
echo "You can also run 'sh unix/replace-my-vim.sh' to replace exVim with your Vim."
