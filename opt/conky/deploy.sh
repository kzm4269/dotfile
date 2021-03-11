#!/bin/bash -eu
set -eu
HERE="$(realpath "$(dirname "$0")")"
ln -sn "$HERE" ~/.conky
ln -sn "$HERE"/conky.conf.lua ~/.conky.conf
