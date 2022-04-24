#!/bin/sh

set -e

echo "Installing common packages"

# Install various packages I usually want
sudo dnf install \
     aspell-en \
     clang-tools-extra \
     cmake \
     colordiff \
     discount \
     emacs \
     git \
     gnome-shell-extension-system-monitor-applet \
     htop \
     llvm-toolset \
     mercurial \
     qt5-qtbase-devel \
     qt5-assistant \
     qt5-doc \
     the_silver_searcher \
     thunderbird \
     tmux \
     -y

# Until MS provides .repo files from a well-known URL,
# install packages from existing version and then just
# update
sudo dnf install \
     https://packages.microsoft.com/yumrepos/vscode/code-1.64.2-1644445844.el7.x86_64.rpm \
     https://packages.microsoft.com/yumrepos/ms-teams/teams-1.4.00.7556-1.x86_64.rpm \
     -y

sudo dnf update \
     code \
     teams \
     -y
