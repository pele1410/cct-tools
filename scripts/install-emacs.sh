#!/bin/sh

set -e

echo "Configuring eMacs Environment"

pushd $(dirname $(readlink -f ${BASH_SOURCE[0]})) &> /dev/null

readonly ROOT_DIR=$(git root)

if [[ -z "${ROOT_DIR}" ]]; then
	echo "Unknown root folder; exiting"
	popd
	exit 1
fi

# Enable daemon
systemctl --user start emacs

# Symlink modified desktop shortcut
ln -sf ${ROOT_DIR}/home/.local/share/applications/emacs.desktop ~/.local/share/applications/emacs.desktop

popd &> /dev/null
