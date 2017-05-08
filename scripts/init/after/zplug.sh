#!/bin/bash
set -eu

if [ ! -d "$HOME/.zplug" ]; then
  curl -sL zplug.sh/installer | zsh; 
fi
