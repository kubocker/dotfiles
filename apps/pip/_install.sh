#!/bin/bash

echo "pyenv install...."
git clone https://github.com/yyuu/pyenv.git ~/.pyenv

echo "install python 3.6.0...."
pyenv versions
pyenv install 3.6.0
pyenv global 3.6.0
pyenv rehash

which -s pip
if [[ $? != 0 ]] ; then
    echo "install pip !!"
    return
fi

echo "install global pip packages..."
cat Pipfile | xargs pip install
