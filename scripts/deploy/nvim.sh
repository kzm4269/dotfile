#!/bin/bash
if [ ! -d ~/.config/nvim ]; then
  ln -snf "$DOTPATH"/.vim ~/.config/nvim
fi
