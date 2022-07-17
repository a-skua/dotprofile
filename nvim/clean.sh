#!/bin/sh

FILEPATH=$HOME/.config/nvim/init.vim

if [ -h $FILEPATH ]; then
  rm $FILEPATH
fi
