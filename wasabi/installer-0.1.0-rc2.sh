#!/bin/bash
set -e

VERSION="v0.1.0-rc2"

DIRNAME="wasabi_"$VERSION

# Clone the repository from GitHub
git clone --depth 1 -b $VERSION git@github.com:practo/wasabi.git $DIRNAME

# Change directory into the cloned repository
cd $DIRNAME

# Run the setup.sh script
sh setup.sh

# Delete the cloned repository
cd ..

echo "Removing temporary directory $DIRNAME"
rm -rf $DIRNAME

echo "Wasabi Installed Successfully"
