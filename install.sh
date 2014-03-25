export ORIGINAL_PATH=`pwd`

# download and install vundle in this repository
mkdir ./vimfiles/
cd ./vimfiles/
git clone https://github.com/gmarik/vundle.git vundle
cd ${ORIGINAL_PATH}

# install vim-autocomplpop (Because this plugin is in bitbucket)
cp -r ./ext/vim-autocomplpop ./vimfiles/bundle/

# install powerline-fonts in your system
cd ./ext/powerline-fonts/DejaVuSansMono/
cp DejaVuSansMono/DejaVu* ~/Library/Fonts/
cd ${ORIGINAL_PATH}

# download and install bundles through Vundle in this repository
mvim -u .vimrc --cmd "let g:exvim_dev=1" --cmd "set rtp=./vimfiles,\$VIMRUNTIME,./vimfiles/after" +BundleInstall +qall
