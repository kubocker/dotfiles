#!/bin/fish

pip install --upgrade pip

echo "install global pip packages..."
cat Pipfile | xargs pip install
