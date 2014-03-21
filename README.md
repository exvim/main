# Intro

exVim is a project to turn Vim into a nice programming environment. 

### What can exVim do? ###

- Manage your project with `.exvim` setting file.
- Update your project files by single command. (tags, cscope-db, search-index, makefile, ...)
- Project files store in one place (in the folder `./.exvim.your_project_name/` under your project).
- Load Vim-plugin on demand for different projects based on your `.exvim` settings.
- Better management of plugin windows in Vim. (avoid multiple plugin windows mess up in Vim)  
- Browse and operate your project files and folders in project window.
- Class, variable and function tags jumpping.
- Global search in project scope. 
- Global search engine customization (user can choose grep, idutils even his own one)
- A powful way to filter your global search result. 
- Generate classes hierarchy pictures. 
- Enhanced quick-fix window.
- Popular Vim-plugin integrated.

### How does it work? ###

By edit and save your project settings in `your_project_name.exvim` file and open it with Vim, the exVim plugins 
will be loaded.  It will parse the `your_project_name..exvim` file and apply settings for your project after Vim 
started.

The settings include:

- The window layout of your Vim. (Where to open the plugin window, initial opened window, last time layout...)
- File and Folder filter.
- Plugin you wish to use in the project.
- Plugin settings for the project.
- External tools. Such as grep, idutils, ctags, cscope,...
- External tools settings for the project.
- Your extension settings.
- ...

exVim also make sure project files store in one place ( in the folder `./.exvim.your_project_name/` under your project ). 
This makes your project clean and much better work with external tools. These project files can be:

- global search index and results (idutils)
- tags
- cscope files
- hierarchy graph pictures
- error message
- temporary files
- ...

After Vim loaded `your_project_name.exvim` and start, exVim helps you update project files and you are now happy
to use your favor plugins with these files.

### How do you integrate Vim-plugins? ###

exVim aims to implement as much as possible of the functions and features in **pure Vim language**. 
We try to avoid reinvent the wheel. As a result, we carefully select and integrate popular Vim-plugins in the world  
for some of the tasks. For those features lack of or for those features we think we can do it better, 
we develop by ourself in put them in the [exVim organization](https://github.com/exvim) on GitHub.

Here is the standards we pick, patches and develop for a vim-plugin:

- Develop by pure Vim language
- Follow the unix philosophy: do one thing well 
- Less dependencies 
- High quality of the code and good performance
- Highly active community
- Can be installed with a variety of plugin managers, Vundle or pathogen. (Repo in GitHub, standard runtime path structure)

`(\(-_-)/)`: **WE USE exVim DEVELOP exVim!**

## Repositories in exVim organization 

This is the main entry point for exVim project. This repo contains the essential `.vimrc` configuration
for running exVim.  Other ex-vim-plugins can be found in exVim organization. They are installed by 
Vundle by `.vimrc` file here. The repository also contains our customized scripts for external tools, and
some useful shell scripts for developing exVim.

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
