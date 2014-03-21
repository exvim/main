# Intro

The main entry point for exVim project.

exVim is a project to make Vim working like a IDE environment in pure Vim scripts.
The project aims to use as less as possible of external tools to make Vim a great 
programming environment. 

**We use exVim develop exVim! (\(-_-)/)**

## Requirements

- Vim 7.3 or higher.

## Installation

**NOTE:** 

exVim install **WILL NOT** overwrite your current Vim environment, this repository 
extract files, changes and running only in its repository directory. 

By the shell script `mvim_dev.sh` it provides, it will run Vim in its own environment 
without break your current Vim settings. This means you can preview, try and test exVim 
and decide later for replace or integrate with your current Vim. 

### Install in Mac OSX

Clone the repository to where you want: 

    git clone https://github.com/exvim/main

Execute the `install.sh` shell script:

    cd main/
    sh install.sh

**NOTE:** The `install.sh` only update bundle in `main/` folder. 
It **WILL NOT** overwrite your `~/.vimrc`, `~/.vim/` files, Don't worry about it.  

After you running the script, the `main/` directory becomes a development environment
for exVim. Preview exVim by:

    sh mvim_dev.sh my_project.exvim 

#### Like it? Want to replace it with your current Vim? 
    
Now you've fall in love with exVim, and you want to replace it with your current
Vim environment, just do:

    cd main/                           # enter the main/ repository
    cp .vimrc ~/.vimrc                 # you can merge your .vimrc with this
    cp .vimrc.bundles ~/.vimrc.bundles # the bundle settings for exVim, change it if you need
    cp -r vimfiles/ ~/.vim/            # replace your old bundles

### Install in Linux

Linux shell script coming soon!
Usually you can follow the install in Mac OSX.

### Install in Windows

Windows test coming soon!
I still not test exVim in Windows yet, will do it later.
Usually you can follow the install in Mac OSX.
