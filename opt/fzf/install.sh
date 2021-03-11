#!/bin/bash
set -eu

if [[ ! -d "$HOME/.fzf" ]]; then
  git clone --depth 1 'https://github.com/junegunn/fzf.git' ~/.fzf
fi
~/.fzf/install --key-bindings --completion --no-update-rc
