#!/bin/bash

cwd=$(pwd)
escape_cwd=$(printf "%q" "$(pwd)")
vim \
    -u "${cwd}/.vimrc" \
    --cmd "let g:exvim_custom_path='${cwd}'" \
    --cmd "set runtimepath=${escape_cwd}/vimfiles,\$VIMRUNTIME,${escape_cwd}/vimfiles/after" \
    ${1:+"$@"}
