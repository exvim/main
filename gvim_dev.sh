gvim \
    -u .vimrc \
    --cmd "let g:exvim_dev=1" \
    --cmd "set runtimepath=./vimfiles,$VIMRUNTIME,./vimfiles/after" \
    $1
