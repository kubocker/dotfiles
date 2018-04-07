#!/bin/bash

which git
if [[ $? != 0 ]]; then
    return
fi

# 1.
echo 
git clone https://github.com/nim-lang/nimble.git ~/.nimble

# 2.
cd ~/.nimble

# 3.
nim c src/nimble

# 4.
src/nimble install

# 5.
cat Nimfile | xargs src/nimble install