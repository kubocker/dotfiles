#!/bin/bash

function sub_install {
  cd $1
  bash _install.sh
  cd ..
}

sub_install pip/
sub_install npm/
sub_install gem/
sub_install sdkman/
sub_install nimble/