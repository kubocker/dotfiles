#!/bin/bash

echo "Installing yum packages..."

# Linux
if [ $(uname -s) != 'Darwin']; then

    if [ -e /etc/redhat-release ]; then
        cat YumFile | xargs sudo yum install
    fi

fi