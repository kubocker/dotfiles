#!/bin/fish

stack upgrade

echo "install global stack packages..."
cat Stackfile | xargs stack install

