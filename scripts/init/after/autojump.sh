#!/bin/bash
set -eu

if [[ ! -d "$HOME/.autojump" ]]; then
  tmp=$(mktemp -d)
  git clone git://github.com/joelthelion/autojump.git $tmp/autojump
  cd $tmp/autojump
  ./install.py
  rm -rf $tmp
fi
