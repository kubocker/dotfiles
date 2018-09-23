#!/bin/bash


which git
if [[ $? != 0 ]]; then
    return
fi

# 1.
echo "jenv install...."

git clone https://github.com/gcuisinier/jenv.git ~/.jenv

# 2.
jenv versions
jenv add $(/usr/libexec/java_home -v 1.8)
jenv global 1.8
jenv rehash

# 3.
echo "sdkman install...."

curl -s https://get.sdkman.io | bash
source $HOME."/.sdkman/bin/sdkman-init.sh"

# 4.
sdk selfupdate force

# 5.
echo "install global sdkman packages..."

cat SDKMANfile | xargs sdk install
