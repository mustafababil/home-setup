#!/bin/bash
#
# author: Mustafa Babil (mustafababil@outlook.com)

echo "Creating virtual environment"

# Debugging
# set -x

# Absolute path to current directory
MAIN_PATH=$( cd "$(dirname "$0")" ; pwd -P )

cd $MAIN_PATH

# Create virtual env. named p3_env
python3 -m venv p3_env

# Activate virtual env.
source p3_env/bin/activate && deactivate

# Success
echo "Successful!"