These are my config files.  There are many like them, but these are mine

# New Computer Setup

## cct-tools

Clone the `cct-tools` (this) repository.

Symlink all of the files in [home/](home)

## Install repositories and packages

To install common repositories, packages, and python packages, run the [scripts/installer.sh](scripts/installer.sh).

This script is composed of multiple scripts that manage each group of installation packages.

| Script | Purpose |
|:--|:--|
| [scripts/install-repositories.sh](scripts/install-repositories.sh) | Installs repositories to pull packages from |
| [scripts/install-packages.sh](scripts/install-packages.sh) | Installs all the packages I commonly use |
| [scripts/install-python](scripts/install-python.sh) | Installs python (2 and 3) packages |


## Modify .bashrc

We want to modify the `~/.bashrc` file to load our custom scripts.  Add the following:

    # Source custom definitions
    for f in $HOME/.bashrc.d/*
    do
    	. $f
    done


## Configure Emacs

Install packages:

- enforce-column-mode
- ace-flyspell-mode
- auto-complete-c-headers
- bash-completion
- clang-format
- dir-treeview
- docker
- docker-cli
- markdown-mode
- flymd
