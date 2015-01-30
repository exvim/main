#!/bin/bash

export ORIGINAL_PATH=`pwd`

# for repo in "./vimfiles/bundle/"ex_*
for repo in "./vimfiles/bundle/"$1*
do
    echo ------------------------------------------
    echo ${repo}
    echo ------------------------------------------

    cd ${repo}

    # git status -s -b
    git status -s
    git cherry -v

    cd ${ORIGINAL_PATH}
    echo
done
