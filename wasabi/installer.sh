#!/bin/bash
set -e

if [ -z "$VERSION" ]; then
  echo "Error: VERSION is not set. Please check Wasabi GitHub README.md for the correct script"
  exit 1
fi

DIRNAME="wasabi_"$VERSION

git clone --depth 1 -b $VERSION git@github.com:practo/wasabi.git $DIRNAME

cd $DIRNAME

sh setup.sh

cd ..
echo "Removing temporary directory $DIRNAME"
rm -rf $DIRNAME

echo "Wasabi Installed Successfully"
