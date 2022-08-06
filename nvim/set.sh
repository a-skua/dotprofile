#!/bin/sh

DIR=$HOME/.config/nvim

if [ ! -d $DIR ]; then
  mkdir -p $DIR
fi

FILEPATH=$DIR/init.vim

if [ ! -h $FILEPATH ]; then
  ln -s $PWD/nvim/init.vim $FILEPATH
fi

echo "\
┌────────────────────────────────────────────────┐
│                                                │
│   See: https://github.com/junegunn/vim-plug    │
│                                                │
└────────────────────────────────────────────────┘"
