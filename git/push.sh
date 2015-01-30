#!/bin/bash

export ORIGINAL_PATH=`pwd`

# for repo in "./vimfiles/bundle/"ex_*
for repo in "./vimfiles/bundle/"ex-*
do
    echo ------------------------------------------
    echo ${repo}
    echo ------------------------------------------
    cd ${repo}

    # check if we have uncommit changes
    result=$(git cherry -v)
    if [ ! "${result}" == "" ]; then
        git push
    fi

    cd ${ORIGINAL_PATH}
    echo
done
