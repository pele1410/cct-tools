#!/bin/sh

set -e

readonly INSTALLER_DIR="$(dirname $(readlink -f ${BASH_SOURCE[0]}))"

echo "Running common installers from ${INSTALLER_DIR}"

# Start with adding repositories
sh $INSTALLER_DIR/install-repositories.sh

# Then packages
sh $INSTALLER_DIR/install-packages.sh

# Then python packages
sh $INSTALLER_DIR/install-packages-python.sh