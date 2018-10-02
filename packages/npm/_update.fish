#!/bin/fish

npm i -g npm

echo "install global npm packages..."
cat Npmfile | xargs npm i -g
