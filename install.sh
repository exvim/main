export ORIGINAL_PATH=`pwd`

# download and install vundle in this repository
mkdir ./vimfiles/
cd ./vimfiles/
git clone https://github.com/gmarik/vundle.git vundle
cd ${ORIGINAL_PATH}

# install powerline-fonts in your system
cd ./ext/powerline-fonts/DejaVuSansMono/
cp DejaVuSansMono/DejaVu* ~/Library/Fonts/
cd ${ORIGINAL_PATH}

# download and install bundles through Vundle in this repository
sh mvim_dev.sh +BundleInstall +qall
