![exVim Logo](http://exvim.github.io/images/logo.png)

[Documentation](http://exvim.github.io/docs/) |
[Downloads](http://exvim.github.io/downloads/) |
[Plugins](http://exvim.github.io/docs/plugins/) |
[Installation](http://exvim.github.io/docs/install/) |
[Getting Start](http://exvim.github.io/docs/getting-start/) |
[Known Issues](http://exvim.github.io/docs/known-issues/) |
[Community](#community)

# Intro

exVim is a project to turn Vim into a nice programming environment. exVim introduce the project file concept (.exvim) in Vim. By editing this project file (.exvim) through Vim, the exVim plugins will be invoked. In this way, it makes you possible to apply different Vim settings, plugin settings and even loading plugins on demand by different projects. In general, it makes Vim become the best IDE in the world!

**EVEN COOLER IS --- WE USE EXVIM TO DEVELOP EXVIM! (\\(-_-)/)**

## Features

- Manage your project with a `.exvim` setting file.
- Update your project files with a single command. (tags, cscope-db, search-index, makefile, ...)
- Project files are stored in one place (in the folder `./.exvim.your_project_name/` under your project).
- Load Vim plugins on demand for different projects based on your `.exvim` settings.
- Better management of plugin windows in Vim. (avoid getting multiple plugin windows messed up)  
- Browse and work on your project files and folders in the project window.
- Class, variable, and function tag jumping.
- Global search in project scope. 
- Global search engine customization (user can choose grep, idutils, or even his own)
- A powerful way to filter your global search results.
- Generate class hierarchy pictures. 
- Enhanced quick-fix window.
- Popular Vim plugin integrated.

## How does it work?

By editing and saving your project settings in a `your_project_name.exvim` file and opening it with Vim, the exVim plugins will be loaded. exVim will parse the `your_project_name.exvim` file and apply the settings for your project after Vim
has started.

The settings include:

- The window layout of your Vim. (Where to open the plugin window, initial opened window, last used layout...)
- File and Folder filter.
- Plugins you wish to use in the project.
- Plugin settings for the project.
- External tools. Such as grep, idutils, ctags, cscope....
- External tools settings for the project.
- Your extension settings.
- ...

exVim also makes sure project files are stored in one place (in the folder `./.exvim.your_project_name/` under your project). 
This makes your project clean and much better to work with external tools. These project files can be:

- global search index and results (idutils)
- tags
- cscope files
- hierarchy graph pictures
- error messages
- temporary files
- ...

After Vim has loaded `your_project_name.exvim` and started, exVim helps you update your project files so you 
can use your favorite plugins with these files.

## How does it integrate Vim plugins?

exVim aims to implement as many functions and features as possible in **pure Vim language**. 
We try to avoid re-inventing the wheel. As a result, we carefully select and integrate popular Vim plugins  
for some of the tasks. For those features that are lacking or for those we think we can do it better, 
we develop ourselves. They are put in [exVim organization](https://github.com/exvim) on GitHub.

Here are the standards we use for patches and development for Vim plugins:

- Developed in pure Vim language
- Follow the unix philosophy: do one thing well 
- Minimal dependencies 
- High quality code and good performance
- Highly active community
- Can be installed with a variety of plugin managers, Vundle or pathogen. (Repo in GitHub, standard runtime path structure)

Read the [Plugins](http://exvim.github.io/docs/plugins/) page for details of the plugins
in exVim.

## About exVim organization and this repository

The exVim is an organization in Github. The repositories under exVim are the plugins used in
exVim project. They follow the standard Vim plugin structures so that people can install them on
demand.

The [exvim/main](https://github.com/exvim/main#installation) is the repository for 
managing the plugins, external tools, and custom scripts. It is the main entry point for the
exVim project. 

The repository contains:

- An essential `.vimrc` settings for exVim.
- Configuration files for external tools.
- Templates for vim-plugins and external tools.
- exVim develop environment.

## Community

- [Chinese] QQ群: 319248144
- [English] Comming Soon...
