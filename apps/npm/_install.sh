#!/bin/bash

which git
if [[ $? != 0 ]]; then
    return
fi

# 1.
echo "nodenv install...."

git clone git://github.com/nodenv/nodenv.git ~/.nodenv
git clone https://github.com/nodenv/node-build.git ~/.nodenv/plugins/node-build

# 2.
echo "install node 8.9.4...."

nodenv versions
nodenv install 8.9.4
nodenv global 8.9.4
nodenv rehash

# 3.
npm i -g npm

# 4.
echo "install global npm packages..."

cat Npmfile | xargs npm i -g
