#!/bin/sh

set -e

echo "Installing common repositories"

# Install repositories commonly used

if [[ -z "${FEDORA_INSTALL}" ]]; then
    sudo yum install \
        epel-release \
        -y
fi

# Install github
sudo dnf install 'dnf-command(config-manager)'
sudo dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo

# Install Negativo for NVIDIA/CUDA
sudo dnf config-manager --add-repo=https://negativo17.org/repos/fedora-nvidia.repo

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

# Docker Community Edition
sudo dnf -y install dnf-plugins-core
if [[ -z "${ALMA_INSTALL}" ]]; then
    sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
else
    sudo dnf config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
fi
