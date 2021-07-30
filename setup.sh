#!/bin/bash
#
# setup.sh
#
# This script prepares the repository for using the Vates Vale style.
# This includes copying .vale.ini to the project root and copying
# the styles directory to .github/styles.

set -e

curl -O https://raw.githubusercontent.com/xcp-ng/vale-styles/master/.vale.ini
curl -L https://github.com/xcp-ng/vale-styles/archive/refs/tags/v0.1.tar.gz | tar xzv --strip-components=1 --exclude=.vale.ini --exclude=setup.sh -C .github/
