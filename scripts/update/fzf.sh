#!/bin/bash
set -eu

[ -d "$HOME/.fzf" ] || exit
cd "$HOME/.fzf"
git pull
~/.fzf/install --key-bindings --completion --no-update-rc &>/dev/null
