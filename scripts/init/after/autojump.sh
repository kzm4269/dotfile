#!/bin/bash
set -eu

if [[ ! -d "$HOME/.autojump" ]]; then
  tmp=$(mktemp -d)
  git clone https://github.com/joelthelion/autojump $tmp/autojump
  cd $tmp/autojump
  ./install.py
  rm -rf $tmp
fi
