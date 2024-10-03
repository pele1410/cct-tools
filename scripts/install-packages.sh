#!/bin/sh

set -e

echo "Installing common packages"

# Install various packages I usually want
sudo dnf install --skip-broken \
     cifs-utils \
     clang-tools-extra \
     cmake \
     code \
     colordiff \
     discount \
     emacs \
     gh \
     git \
     gnome-shell-extension-auto-move-windows \
     gnome-shell-extension-caffeine \
     gnome-shell-extension-system-monitor-applet \
     gnome-shell-extension-workspace-indicator \
     htop \
     libstdc++-docs \
     llvm-toolset \
     mercurial \
     npm \
     ntfsprogs \
     podman \
     python3-pip \
     qt5-assistant \
     qt5-doc \
     qt5-qtbase-devel \
     ruby-devel \
     the_silver_searcher \
     thunderbird \
     tmux \
     tree \
     -y

# Docker-specific
sudo dnf install \
     docker-ce \
     docker-ce-cli \
     containerd.io \
     docker-buildx-plugin \
     docker-compose-plugin \
     -y


# Install development tools
sudo dnf group install \
     "development tools" \
     -y
