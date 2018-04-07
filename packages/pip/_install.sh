#!/bin/bash

which -s git
if [[ $? != 0 ]]; then
    return
fi

# 1.
echo "pyenv install...."

git clone https://github.com/yyuu/pyenv.git ~/.pyenv

# 2.
echo "install python 3.6.0...."

pyenv versions
pyenv install 3.6.0
pyenv global 3.6.0
pyenv rehash

# 3.
pip install --upgrade pip

# 4.
echo "install global pip packages..."

cat Pipfile | xargs pip install
