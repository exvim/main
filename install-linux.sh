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
cd ${ORIGINAL_PATH}

# update vim-autocomplpop (Because this plugin is in bitbucket)
rm -rf ./vimfiles/bundle/vim-autocomplpop
cp -r ./ext/vim-autocomplpop ./vimfiles/bundle/

# # install powerline-fonts in your system
# cd ./ext/powerline-fonts/DejaVuSansMono/
# cp DejaVuSansMono/DejaVu* ~/Library/Fonts/
# cd ${ORIGINAL_PATH}

# download and install bundles through Vundle in this repository
vim -u .vimrc --cmd "let g:exvim_dev=1" --cmd "set rtp=./vimfiles,\$VIMRUNTIME,./vimfiles/after" +PluginInstall +qall
