These are my config files.  There are many like them, but these are mine

# New Computer Setup

## config-files

Clone the config-files (this) repository.
Symlink all of the files in home/

## Install repositories

- epel-release

## Install packages

Run the scripts/pacakges.sh file to install known packages.
Update this file as more packages are required

### Install python packages

Run the scripts/pacakges-python.sh file to install known packages.
Update this file as more packages are required

## Modify .bashrc

We want to modify the ~/.bashrc file to load our custom scripts.  Add the following:

```
# Source custom definitions
for f in "$HOME/.bashrc.d/*"
do
	. $f
done
```

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
