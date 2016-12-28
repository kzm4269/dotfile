#!/bin/bash
set -eu
direnv_home="$HOME/.direnv"

[ -d "$direnv_home" ] || git clone https://github.com/direnv/direnv "$direnv_home"
cd "$direnv_home"; make
