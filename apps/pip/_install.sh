#!/bin/bash

which -s pip
if [[ $? != 0 ]] ; then
    echo "install pip !!"
    return
fi

echo "install global pip packages..."
cat Pipfile | xargs pip install
