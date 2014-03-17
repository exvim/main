mvim \
    -u .vimrc \
    --cmd "let g:exvim_dev=1" \
    --cmd "set runtimepath=./vimfiles,/Applications/MacVim.app/Contents/Resources/vim/vimfiles,/Applications/MacVim.app/Contents/Resources/vim/runtime,/Applications/MacVim.app/Contents/Resources/vim/vimfiles/after,./vimfiles/after" \
    $1
