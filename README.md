# Intro

The main entry point for exVim project.

The repository contains the .vimrc file which will config your Vim to exVim by the 
help of Vundle. 

It also contains the external files that used in exVim project.

## Requirements

- Vim 7.3 or higher.

## Installation

### Install in Mac OSX

Clone the repository to where you want: 

    git clone https://github.com/exvim/main

Execute the install.sh shell script:

    cd main/
    sh install.sh

**NOTE:** The install.sh script will only update bundle in main/ folder, 
it **will not** overwrite your `~/.vimrc`, `~/.vim/` files, so don't worry about it.  

After you running the script, the main/ directory becomes a development environment
for exVim. Preview exVim by:

    sh mvim_dev.sh my_project.exvim 

Like it? Now you've fall in love with exVim, and you want to replace it with your current
Vim environment, just do:

    cd main/                           # enter the main/ repository
    cp .vimrc ~/.vimrc                 # you can merge your .vimrc with this
    cp .vimrc.bundles ~/.vimrc.bundles # the bundle settings for exVim, change it if you need
    cp -r vimfiles/ ~/.vim/            # replace your old bundles

### Install in other platform 

Linux shell script coming soon!

Usually you can follow the install in Mac OSX.

Windows test coming soon!

I still not test exVim in Windows yet, will do it later.
