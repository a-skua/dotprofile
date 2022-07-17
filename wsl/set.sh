#!/bin/sh

FILEPATH=/etc/wsl.conf

if [ ! -h $FILEPATH ]; then
  sudo ln -s $PWD/wsl/wsl.conf $FILEPATH
fi
