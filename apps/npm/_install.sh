#!/bin/bash

which -s nvm
if [[ $? != 0 ]] ; then
  echo "install nvm with first.... please"
  return
fi

echo "install global npm packages..."
cat Npmfile | xargs npm install -g
