export ORIGINAL_PATH=`pwd`

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

# download and install vundle in ./vimfiles/bundle/
git clone https://github.com/gmarik/vundle.git vundle

# download and install bundles through Vundle in this repository
cd ${ORIGINAL_PATH}
vim -u .vimrc --cmd "let g:exvim_dev=1" --cmd "set rtp=./vimfiles,\$VIMRUNTIME,./vimfiles/after" +PluginInstall +qall

# install powerline-fonts in your system
cd ./ext/powerline-fonts/DejaVuSansMono/
if [ ! -f "~/Library/Fonts/DejaVu\ Sans\ Mono\ Bold\ Oblique\ for\ Powerline.ttf" ]; then 
    cp "./DejaVuSansMono/DejaVu\ Sans\ Mono\ Bold\ Oblique\ for\ Powerline.ttf" "~/Library/Fonts/"
fi
if [ ! -f "~/Library/Fonts/DejaVu\ Sans\ Mono\ Bold\ for\ Powerline.ttf" ]; then 
    cp "~/Library/Fonts/DejaVu\ Sans\ Mono\ Bold\ for\ Powerline.ttf" "~/Library/Fonts/"
fi
if [ ! -f "~/Library/Fonts/DejaVu\ Sans\ Mono\ Oblique\ for\ Powerline.ttf" ]; then 
    cp "~/Library/Fonts/DejaVu\ Sans\ Mono\ Oblique\ for\ Powerline.ttf" "~/Library/Fonts/"
fi
if [ ! -f "~/Library/Fonts/DejaVu\ Sans\ Mono\ for\ Powerline.ttf" ]; then 
    cp "~/Library/Fonts/DejaVu\ Sans\ Mono\ for\ Powerline.ttf" "~/Library/Fonts/"
fi

# go back
cd ${ORIGINAL_PATH}
