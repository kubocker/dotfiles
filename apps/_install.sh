#!/bin/bash

function sub_install {
  cd $1
  bash _install.sh
  cd ..
}

sub_install homebrew/
sub_install apt_get/
sub_install yum/

mkdir $HOME/Develop/kubocker/kbk
mkdir $HOME/Develop/kubocker/study
mkdir $HOME/Develop/kubocker/asset

mkdir $HOME/Develop/projects
