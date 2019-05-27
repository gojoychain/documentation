#!/bin/sh

echo 'Cleaning up old build files...'
rm -rf build/

echo 'Generating docs...'
npm run build

echo 'Deploying docs...'
sudo cp -r ./build/joy-docs /var/www/

echo 'Deployed.'
