![exVim Logo](http://exvim.github.io/images/logo.png)

- - -
- [Intro](#intro)
- [Installation](http://exvim.github.io/docs/install/)
- [Getting Start](http://exvim.github.io/docs/getting-start/)
- [Plugins](http://exvim.github.io/docs/plugins/)
- [Known Issues](http://exvim.github.io/docs/known-issues/)

For more details, check [exVim's Docs](http://exvim.github.io/docs/)

- - -

# Intro

exVim is a project to turn Vim into a nice programming environment. This project makes you 
possible to apply different Vim settings, plugin settings and even plugins by different projects. 
In this way, it makes Vim become the best IDE in the world!

**WHAT EVEN COOL IS --- WE USE EXVIM DEVELOP EXVIM! (\\(-_-)/)**

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

## How does it integrate Vim-plugins?

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

Read the [Plugins](http://exvim.github.io/docs/plugins/) to get the details of the plugins
in exVim.

## About exVim organization and this repository

The exVim is an organization in Github. The repositories under exVim are the plugins used in
exVim project. They follow the standard vim-plugin structures so that people can install on
demand.

The [exvim/main](https://github.com/exvim/main#installation) is the repository for 
managing the plugins, external tools and custom scripts. It is the main entry point for 
exVim project. 

The repository contains:

- An essential `.vimrc` settings for exVim.
- Configuration files for external tools.
- Templates for vim-plugins and external tools.
- exVim develop environment.

