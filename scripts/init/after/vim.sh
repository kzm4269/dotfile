#!/bin/bash
set -eu

if ! type nvim &>/dev/null; then
  curl -L https://github.com/neovim/neovim/releases/download/stable/nvim.appimage > ~/local/bin/nvim
  chmod u+x ~/local/bin/nvim
fi

cd ~/.vim
make all
