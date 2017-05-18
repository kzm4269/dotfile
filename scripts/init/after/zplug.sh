#!/bin/bash
set -eu
export ZPLUG_HOME="$HOME/.zplug"

if [ ! -d "$ZPLUG_HOME" ]; then
  git clone https://github.com/zplug/zplug "$ZPLUG_HOME"
fi
zsh "$ZPLUG_HOME/init.zsh"
