#!/bin/sh

FILEPATH=$HOME/.gitconfig

if [ ! -f $FILEPATH ]; then
  cp $PWD/git/.gitconfig $FILEPATH
  git config --global -e
fi
