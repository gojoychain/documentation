#!/bin/sh

echo 'Cleaning up old build files...'
rm -rf build/

echo 'Generating docs...'
npm run build

echo 'Deploying docs...'
sudo cp -r ./build/ghu-docs /var/www/

echo 'Deployed.'
