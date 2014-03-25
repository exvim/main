vim -u .vimrc --cmd "let g:exvim_dev=1" --cmd "set rtp=./vimfiles,\$VIMRUNTIME,./vimfiles/after" +PluginClean +PluginUpdate +qall
