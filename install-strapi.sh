#!/bin/bash

# Update package lists and upgrade packages to their latest versions
sudo apt update -y && sudo apt upgrade -y

# Remove any packages that are no longer required
sudo apt autoremove -y

# Install required packages for Strapi
sudo apt install libvips libvips-dev libvips-tools python gir1.2-vips-8.0 make g++ -y

# Install Yarn globally using npm
npm install -g yarn

# Create a new Strapi project with the quickstart flag
yarn create strapi-app my-backend --quickstart

# Navigate to the newly created Strapi project directory
cd my-backend

# Create a .nvmrc file to specify the Node.js version to use
echo "18.14.2" > .nvmrc

# Start the Strapi development server
npm run develop
