These are my config files.  There are many like them, but these are mine

# Repository Structure

## home

All configuration files for various tools as well as bash

## scripts

Helper scripts to run various aspects of the new computer setup process

# New Computer Setup

## cct-tools

Clone the `cct-tools` (this) repository.

First time repo creation should run the `cct-symlink` tool from `home/.bin` manually.
Subsequent changes can run this from your `$PATH`

## Install repositories and packages

To install common repositories, packages, and python packages, run the [scripts/installer.sh](scripts/installer.sh).

This script is composed of multiple scripts that manage each group of installation packages.

| Script | Purpose |
|:--|:--|
| [install-repositories](scripts/install-repositories.sh) | Installs repositories to pull packages from |
| [install-packages](scripts/install-packages.sh) | Installs all the packages I commonly use |
| [install-python](scripts/install-python.sh) | Installs python (2 and 3) packages |
| [install-emacs](scripts/install-emacs.sh) | Configure eMacs |


## Modify .bashrc

We want to modify the `~/.bashrc` file to load our custom scripts.  Add the following:

    # Source custom definitions
    for f in $HOME/.bashrc.d/*
    do
    	. $f
    done


## Configure Emacs

Install packages:

- ag
- ace-flyspellemac
- auto-complete-c-headers
- bash-completion
- clang-format
- column-enforce-mode
- dir-treeview
- docker
- docker-cli
- jinja-mode
- markdown-mode
- flymd
- sudo-edit
