#!/bin/sh

DIR=$HOME/.config/nvim

if [ ! -d $DIR ]; then
  mkdir -p $DIR
fi

ln -s $PWD/nvim/vimrc.vim $DIR/vimrc.vim
ln -s $PWD/nvim/init.lua $DIR/init.lua

echo "\
┌────────────────────────────────────────────────┐
│                                                │
│   See: https://github.com/junegunn/vim-plug    │
│                                                │
└────────────────────────────────────────────────┘"
