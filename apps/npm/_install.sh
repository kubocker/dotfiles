#!/bin/bash

echo "install nvm..."
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.26.1/install.sh | bash

which -s nvm
if [[ $? != 0 ]] ; then
  echo "install nvm with first.... please"
  return
fi

echo "install global npm packages..."
cat Npmfile | xargs npm install -g
