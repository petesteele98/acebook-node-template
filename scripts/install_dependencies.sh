#!/bin/bash

# Install Node.js and npm
curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo yum install -y nodejs

# Install Cypress
npm install cypress@12.14 --save-dev

# Install ESLint
npm install eslint@8.10 --save-dev

# Install Jest
npm install jest@27.5 --save-dev

# Install Mongoose
npm install mongoose@5.8 --save

# Install other dependencies
# ...

# Run npm install to install remaining dependencies
sudo npm install