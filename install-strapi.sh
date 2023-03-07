#!/bin/bash

# Update package lists and upgrade packages to their latest versions
sudo apt update -y && sudo apt upgrade -y

# Remove any packages that are no longer required
sudo apt autoremove -y

# Install required packages for Strapi
sudo apt install libvips libvips-dev libvips-tools python gir1.2-vips-8.0 make g++ -y

# Install Yarn globally using npm
npm install -g yarn

# Install PM2 (Process Manager for Node)
yarn global add pm2

# Create a new Strapi project with the quickstart flag
yarn create strapi-app my-backend --quickstart --no-run

# Navigate to the newly created Strapi project directory
cd my-backend && echo "18.14.2" > .nvmrc

# Install the init admin user plugin
yarn add strapi-plugin-init-admin-user

# Set up environment variables
echo "INIT_ADMIN_USERNAME=admin
INIT_ADMIN_PASSWORD=admin
INIT_ADMIN_FIRSTNAME=Admin
INIT_ADMIN_LASTNAME=Admin
INIT_ADMIN_EMAIL=admin@init-strapi-admin.strapi.io" > .env

# server.js for PM2
echo "const strapi = require('@strapi/strapi');
strapi().start();" > server.js
