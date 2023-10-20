#!/bin/sh

set -e

echo "Installing common packages"

# Install various packages I usually want
sudo dnf install \
     clang-tools-extra \
     cmake \
     code \
     colordiff \
     discount \
     emacs \
     gh \
     git \
     gnome-shell-extension-system-monitor-applet \
     htop \
     libstdc++-docs \
     llvm-toolset \
     mercurial \
     podman \
     python3-pip \
     qt5-qtbase-devel \
     qt5-assistant \
     qt5-doc \
     ruby-devel \
     the_silver_searcher \
     thunderbird \
     tmux \
     tree \
     -y

# Install development tools
sudo dnf group install \
     "development tools" \
     -y


