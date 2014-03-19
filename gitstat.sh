export ORIGINAL_PATH=`pwd`

# for repo in "./vimfiles/bundle/"ex_*
for repo in "./vimfiles/bundle/"*
do
    echo ------------------------------------------
    echo ${repo}
    echo ------------------------------------------
    cd ${repo}
    git status
    cd ${ORIGINAL_PATH}
    echo 
done
