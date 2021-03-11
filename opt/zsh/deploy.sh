#!/bin/bash -eu
set -eu
HERE="$(realpath "$(dirname "$0")")"
mkdir -p ~/.config
ln -sn "$HERE" ~/.zsh
ln -sn "$HERE"/zshenv ~/.zshenv
ln -sn "$HERE"/zshrc ~/.zshrc
ln -sn "$HERE"/zprofile ~/.zprofile
