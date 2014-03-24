export ORIGINAL_PATH=`pwd`

# for repo in "./vimfiles/bundle/"ex_*
for repo in "./vimfiles/bundle/"$1*
do
    echo ------------------------------------------
    echo ${repo}
    echo ------------------------------------------
    cd ${repo}
    git pull
    cd ${ORIGINAL_PATH}
    echo 
done
