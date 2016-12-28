#!/bin/bash
set -eu

[ -d "$HOME/.gibo" ] || git clone https://github.com/simonwhitaker/gibo ~/.gibo
ln -sf ~/.gibo/gibo ~/local/bin/gibo
