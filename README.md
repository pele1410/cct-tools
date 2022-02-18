These are my config files.  There are many like them, but these are mine



# New Computer Setup

## Install repositories

- epel-release

## Install packages

- aspell-en
- the_silver_searcher

## config-files

Clone the config-files (this) repository.
Symlink all of the files in home/

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
- coverage
- dir-treeview
- docker
- docker-cli
