#!/bin/sh

FILEPATH=/etc/wsl.conf
if [ -h $FILEPATH ]; then
  sudo rm $FILEPATH
fi
