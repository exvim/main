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
    # TODO: please check if the vundle is latest version
    git clone https://github.com/gmarik/Vundle.vim Vundle.vim
fi

# download and install bundles through Vundle in this repository
echo "Update vim-plugins."
cd ${ORIGINAL_PATH}
vim -u .vimrc.mini --cmd "set rtp=./vimfiles,\$VIMRUNTIME,./vimfiles/after" +PluginClean +PluginUpdate +qall

# TODO
# install powerline-fonts on MacOSX
# cd ./ext/powerline-fonts/DejaVuSansMono/
# if [ ! -f "~/Library/Fonts/DejaVu\ Sans\ Mono\ Bold\ Oblique\ for\ Powerline.ttf" ]; then
#     cp ./DejaVu\ Sans\ Mono\ Bold\ Oblique\ for\ Powerline.ttf ~/Library/Fonts/
# fi
# if [ ! -f "~/Library/Fonts/DejaVu\ Sans\ Mono\ Bold\ for\ Powerline.ttf" ]; then
#     cp ./DejaVu\ Sans\ Mono\ Bold\ for\ Powerline.ttf ~/Library/Fonts/
# fi
# if [ ! -f "~/Library/Fonts/DejaVu\ Sans\ Mono\ Oblique\ for\ Powerline.ttf" ]; then
#     cp ./DejaVu\ Sans\ Mono\ Oblique\ for\ Powerline.ttf ~/Library/Fonts/
# fi
# if [ ! -f "~/Library/Fonts/DejaVu\ Sans\ Mono\ for\ Powerline.ttf" ]; then
#     cp ./DejaVu\ Sans\ Mono\ for\ Powerline.ttf ~/Library/Fonts/
# fi
echo "Please install powerline-fonts manually."

# go back
cd ${ORIGINAL_PATH}

#
echo "|"
echo "exVim installed successfully!"
echo "|"
echo "You can run 'sh osx/mvim.sh' to preview exVim."
echo "You can also run 'sh osx/replace-my-vim.sh' to replace exVim with your Vim."
