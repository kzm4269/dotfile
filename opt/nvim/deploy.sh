#!/bin/bash -eu
set -eu
HERE="$(realpath "$(dirname "$0")")"
mkdir -p ~/.config
ln -sn "$HERE" ~/.config/nvim
