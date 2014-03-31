cwd=`pwd`
gvim \
    -u ${cwd}/.vimrc \
    --cmd "let g:exvim_dev=1" \
    --cmd "let g:exvim_dev_path='${cwd}'" \
    --cmd "set runtimepath=${cwd}/vimfiles,\$VIMRUNTIME,${cwd}/vimfiles/after" \
    $1
