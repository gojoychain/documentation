#!/bin/sh

echo 'Generating docs...'
npm run build

echo 'Deploying docs...'
sudo cp -r ./build/ghu-docs /var/www/

echo 'Deployed.'
