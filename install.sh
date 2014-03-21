export ORIGINAL_PATH=`pwd`

# install vundle
mkdir ./vimfiles/
cd ./vimfiles/
git clone https://github.com/gmarik/vundle.git vundle
cd ${ORIGINAL_PATH}

# install powerline-fonts
cd ./external/powerline-fonts/DejaVuSansMono/
cp DejaVuSansMono/DejaVu* ~/Library/Fonts/
cd ${ORIGINAL_PATH}

# applly vundle installs
mvim +BundleInstall +qall
