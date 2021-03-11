#!/bin/bash -eu
set -eu
HERE="$(realpath "$(dirname "$0")")"
ln -s "$HERE"/global.gitconfig ~/.gitconfig
