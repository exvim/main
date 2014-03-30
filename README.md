- - -
- [Intro](#intro)
- [Installation](#installation)
  - [Install in Mac OSX](#install-in-mac-osx)
  - [Install in Linux](#install-in-linux)
  - [Install in Windows](#install-in-windows)
- [Plugins](https://github.com/exvim/main/wiki/Plugins)
- [Getting Start](https://github.com/exvim/main/wiki/GettingStart)
- [Known Issues](https://github.com/exvim/main/wiki/KnownIssues)
- [More Details](https://github.com/exvim/main/wiki/Home)

- - -

# Intro

exVim is a project to turn Vim into a nice programming environment. This project makes you 
possible to apply different Vim settings, plugin settings and even plugins by different projects. 
In this way, it makes Vim become the best IDE in the world!

**WHAT EVEN COOL IS --- WE USE EXVIM DEVELOP EXVIM! (\\(-_-)/)**

## About exVim organization and its repositories

The exVim is an organization in Github. The repositories under exVim are the plugins used in
exVim project. They follow the standard vim-plugin structures so that people can install on
demand.

However, exVim still need some scripts to manage the plugins, external tools and custom scripts.
This is the repository for doing these things. It is the main entry point for exVim project. 
The repository contains:

- An essential `.vimrc` settings for exVim.
- Configuration files for external tools.
- Templates for vim-plugins and external tools.

## Features

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

## How does it work?

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

## How do you integrate Vim-plugins?

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

# Installation

**NOTE:** 

exVim install **WILL NOT** overwrite your current Vim environment, this repository 
extract files, changes and running only in its repository directory. 

By the shell script `osx/mvim.sh` it provides, it will run Vim in its own environment 
without break your current Vim settings. This means you can preview, try and test exVim 
and decide later for replace or integrate with your current Vim. 

## Requirements

- Vim 7.3 or higher.
- [Vundle](https://github.com/gmarik/vundle) or [Pathogen](https://github.com/tpope/vim-pathogen)

## Install in Mac OSX

1. Clone the repository to where you want: 

    ```
    git clone https://github.com/exvim/main
    ```

1. Execute the `osx/install.sh` shell script:

    ```
    cd main/
    sh osx/install.sh
    ```

    **NOTE:** The `osx/install.sh` only update vim-plugins in `main/` folder. 
    It **WILL NOT** overwrite your `~/.vimrc`, `~/.vim/` files, Don't worry about it.  

    After you running the script, the `main/` directory becomes a development environment
    for exVim. 
    
1. Preview exVim:

    ```
    sh osx/mvim.sh my_project.exvim 
    ```

1. Replace your current Vim:

    Like it? Want to replace it with your current Vim?  
    
    Now you've fall in love with exVim, and you want to replace it with your current
    Vim environment, just do:

    ```
    cd main/                           # enter the main/ repository
    cp .vimrc ~/.vimrc                 # you can merge your .vimrc with this
    cp .vimrc.plugins ~/.vimrc.plugins # the plugins settings for exVim, change it if you need
    cp -r vimfiles/ ~/.vim/            # replace your old plugins
    ```
    You can also replace it by running the script:

    ```
    sh osx/replace-my-vim.sh
    ```

## Install in Linux

1. Clone the repository to where you want: 

    ```
    git clone https://github.com/exvim/main
    ```

1. Execute the `unix/install.sh` shell script:

    ```
    cd main/
    sh unix/install.sh
    ```

    **NOTE:** The `unix/install.sh` only update vim-plugins in `main/` folder. 
    It **WILL NOT** overwrite your `~/.vimrc`, `~/.vim/` files, Don't worry about it.  

    After you running the script, the `main/` directory becomes a development environment
    for exVim. 
    
1. Preview exVim:

    ```
    sh unix/gvim.sh my_project.exvim 
    ```

1. Replace your current Vim:

    ```
    sh unix/replace-my-vim.sh
    ```

## Install in Windows

**NOTE: If you're using msysgit, you can open the git-bash shell and follow the 
[install instruction for Linux](#install-in-linux) above.**

1. Download the project by git or [zip file](https://github.com/exvim/main/archive/master.zip). 
Extract it on `C:\exVim` for example. 

1. Enter exVim folder, run `install.bat` batch file:

    ```
    C:\>cd exVim
    C:\exVim>call windows\install.bat
    ```
1. Wait for install finish 

    After you running the script, the `C:\exVim` directory becomes a development environment for exVim. 
    Preview exVim by:

    ```
    C:\exVim>call windows\gvim.bat my_project.exvim
    ```

    If you like it and want to replace it with your current Vim environment, copy the files
    below to your: 

    ```
    C:\exVim>call windows\replace-my-vim.bat
    ```

    **NOTE:** The exVim's .vimrc will rewrite the runtimepath settings for Windows, to make it search
~/.vim folder instead of ~/vimfiles

## Install Powerline Font

The exVim turn on the powerline font support by default. To make it work, you need to install 
powerline font to your system. 

exVim provide DejaVuSansMono for Powerline by default. Just enter the `ext/powerline-fonts/DejaVuSansMono/` 
directory in your exVim, and install all the `.ttf` file.

You can also select other powerline-font in [here](https://github.com/Lokaltog/powerline-fonts)

If you think non of the fonts satisfy you, you can patch your favorite font by 
[fontpatching](https://powerline.readthedocs.org/en/latest/fontpatching.html) 

