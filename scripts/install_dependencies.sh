#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Update package lists for Debian-based systems
sudo apt-get update

# Install Node.js and npm
sudo apt-get install -y nodejs npm

# Change to the deployment directory (adjust the path as needed)
cd /opt/my_application

# Remove existing node_modules and package-lock.json if they exist
rm -rf node_modules package-lock.json

# Install dependencies
npm install
