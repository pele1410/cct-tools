#!/bin/sh

set -e

readonly INSTALLER_DIR="$(dirname $(readlink -f ${BASH_SOURCE[0]}))"

# Currently support Fedora and Alma distributions
if [[ -f /etc/fedora-release ]]; then
    export FEDORA_INSTALL=1
elif [[ -f /etc/almalinux-release ]]; then
    export ALMA_INSTALL=1
else
    echo "Unsupported distribution"
    exit 2
fi

echo "Running common installers from ${INSTALLER_DIR}"

# Start with adding repositories
sh $INSTALLER_DIR/install-repositories.sh

# Then packages
sh $INSTALLER_DIR/install-packages.sh

# Then python packages
sh $INSTALLER_DIR/install-python.sh

# Then gem packages
sh $INSTALLER_DIR/install-gems.sh

# Then emacs packages
sh $INSTALLER_DIR/install-emacs.sh
