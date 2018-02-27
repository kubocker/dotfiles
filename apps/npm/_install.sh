#!/bin/bash

echo "install global npm packages..."
cat Npmfile | xargs npm install -g
