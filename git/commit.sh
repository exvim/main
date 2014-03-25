export ORIGINAL_PATH=`pwd`

# for repo in "./vimfiles/bundle/"ex_*
for repo in "./vimfiles/bundle/"ex-*
do
    echo ------------------------------------------
    echo ${repo}
    echo ------------------------------------------
    cd ${repo}

    # check if we have unstaged, uncommit changes
    if ! git diff-index --quiet HEAD --; then
        git add --all .
        git commit -m "$1"
    fi

    cd ${ORIGINAL_PATH}
    echo 
done
