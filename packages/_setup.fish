#!/bin/bash

function sub_install
  cd $1
  source _update.fish
  cd ..
end

sub_install pip/
sub_install npm/
sub_install gem/
sub_install sdkman/
sub_install nimble/