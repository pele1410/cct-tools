#!/bin/sh

set -e


echo "Installing common python packages"

# Install various Python packages I usually want
python3 -m pip install \
	tmuxp \
	--user --upgrade
