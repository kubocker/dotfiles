#!/bin/bash


echo "jenv install...."
git clone https://github.com/gcuisinier/jenv.git ~/.jenv

echo "sdkman install...."
curl -s https://get.sdkman.io | bash
source "Users/kubocker/.sdkman/bin/sdkman-init.sh"


which -s sdk
if [[ $? != 0 ]] ; then
  echo "install sdkman !!"
  return
fi
sdk selfupdate force

echo "install global sdkman packages..."
cat SDKMANfile | xargs sdk install
