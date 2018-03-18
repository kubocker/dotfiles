#!/bin/bash

echo "installing... apt-get packages"


# Linux
if [ $(uname -s) != 'Darwin' ]; then

    if [ -e /etc/debian_version ] || [ -e /etc/debian_release ];
        cat Aptfile | xargs sudo apt-get install
    fi

fi
