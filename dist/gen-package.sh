#!/bin/bash

export version="v0.5.0"
export ORIGINAL_PATH=`pwd`

if [ ! -d "~/exvim/build/" ]; then
    mkdir ~/exvim/build/
fi

rsync -Cavz --exclude=".git*" --exclude=".DS_Store" --exclude="*.exvim" . ~/exvim/build/exvim-${version}

cd ~/exvim/build/exvim-${version}
tar -cvzf ~/exvim/build/exvim-${version}.tar.gz * .vimrc .vimrc.plugins .vimrc.mini
zip -r ~/exvim/build/exvim-${version}.zip * .vimrc .vimrc.plugins .vimrc.mini

cd ${ORIGINAL_PATH}
