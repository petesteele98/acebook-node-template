#!/bin/bash
# Exit immediately if a command exits with a non-zero status
set -e

# Check if nodejs and npm are installed
if ! command -v node &> /dev/null; then
    sudo yum install -y nodejs npm
fi

# Check if node_modules exists and is not empty
if [ -d node_modules ] && [ "$(ls -A node_modules)" ]; then
    echo "node_modules directory exists and is not empty. Skipping npm install."
else
    rm -rf node_modules package-lock.json
    npm install
fi
