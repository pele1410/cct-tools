i#!/bin/sh

set -e

echo "Configuring tmux Environment"

readonly PLUGINS_DIR=${HOME}/.tmux/plugins

mkdir -p ${PLUGINS_DIR}

# Clone the Tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ${PLUGINS_DIR}/dracula-tmux

# Clone dracula
git clone https://github.com/dracula/tmux.git ${PLUGINS_DIR}/dracula-tmux

popd &> /dev/null
