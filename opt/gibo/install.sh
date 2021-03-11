#!/bin/bash
set -eu

if [[ ! -d "$HOME/.gibo" ]]; then
  git clone https://github.com/simonwhitaker/gibo ~/.gibo
fi
ln -sf ~/.gibo/gibo ~/local/bin/gibo
