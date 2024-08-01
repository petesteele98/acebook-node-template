#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

#
sudo yum update -y
sudo yum install -y nodejs npm
rm -rf node_modules package-lock.json
npm install
