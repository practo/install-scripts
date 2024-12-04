#!/bin/bash

VERSION="v0.0.1-rc3"

DIRNAME="wasabi_"$VERSION

# Clone the repository from GitHub
git clone --depth 1 -b $VERSION git@github.com:practo/wasabi.git $DIRNAME

# Change directory into the cloned repository
cd $DIRNAME

# Run the setup.sh script
sh setup.sh

# Delete the cloned repository
cd ..

echo "Removing $DIRNAME"
rm -rf $DIRNAME
