#!/bin/sh

set -e

echo "Installing common repositories"

# Install repositories commonly used
# Assume dnf has not been installed yet
sudo yum install \
     epel-release \
     -y
