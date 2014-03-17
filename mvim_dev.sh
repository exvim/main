mvim \
    -u vimrc.vim \
    --cmd "let g:exvim_dev=1" \
    --cmd "set runtimepath=./vimfiles,/Applications/MacVim.app/Contents/Resources/vim/vimfiles,/Applications/MacVim.app/Contents/Resources/vim/runtime,/Applications/MacVim.app/Contents/Resources/vim/vimfiles/after" \
    $1
