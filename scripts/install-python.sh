#!/bin/sh

set -e

readonly INSTALLER_DIR="$(dirname $(readlink -f ${BASH_SOURCE[0]}))"

echo "Installing common python packages"

python3 -m pip install --upgrade --user -r "${INSTALLER_DIR}/python-requirements.txt"
