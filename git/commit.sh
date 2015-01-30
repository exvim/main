#!/bin/bash

export ORIGINAL_PATH=`pwd`

# for repo in "./vimfiles/bundle/"ex_*
for repo in "./vimfiles/bundle/"ex-*
do
    echo ------------------------------------------
    echo ${repo}
    echo ------------------------------------------
    cd ${repo}

    # check if we have unstaged, uncommit changes
    git add --all .
    if ! git diff-index --quiet HEAD --; then
        git commit -m "$1"
    fi

    cd ${ORIGINAL_PATH}
    echo
done
