#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Update package lists for Red Hat-based systems
sudo yum update -y

# Install Node.js and npm
sudo yum install -y nodejs npm

# Change to the deployment directory (adjust the path as needed)
cd /opt/my_application

# Remove existing node_modules and package-lock.json if they exist
rm -rf node_modules package-lock.json

# Install dependencies
npm install
