#!/bin/bash

function sub_install {
  cd $1
  bash _install.sh
  cd ..
}

sub_install homebrew/
sub_install apt_get/
sub_install yum/