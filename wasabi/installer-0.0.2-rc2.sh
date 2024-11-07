#!/bin/bash

# Clone the repository from GitHub
git clone -b 0.0.2-rc1 git@github.com:practo/wasabi.git

# Change directory into the cloned repository
cd wasabi

# Run the setup.sh script
sh setup.sh

# Delete the cloned repository
cd ..
rm -rf wasabi
