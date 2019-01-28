#!/bin/fish

echo "install global go packages..."
cat Gofile | xargs go get -u -v
