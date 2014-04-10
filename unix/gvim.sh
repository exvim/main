#!/bin/bash

cwd=$(pwd)
escape_cwd=$(printf "%q" "$(pwd)")
gvim \
    -u "${cwd}/.vimrc" \
    --cmd "let g:exvim_dev=1" \
    --cmd "let g:exvim_dev_path='${cwd}'" \
    --cmd "set runtimepath=${escape_cwd}/vimfiles,\$VIMRUNTIME,${escape_cwd}/vimfiles/after" \
    ${1:+"$@"}
