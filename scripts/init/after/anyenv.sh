#!/bin/bash
set -eu
anyenv_home="$HOME/.anyenv"
anyenv="$anyenv_home/bin/anyenv"
pyenv_home="$anyenv_home/envs/pyenv"

# anyenv
[ -d "$anyenv_home" ] ||
  git clone https://github.com/riywo/anyenv "$anyenv_home"
eval "$("$anyenv" init -)"

# pyenv
[ -d "$pyenv_home" ] ||
  "$anyenv" install pyenv

# pyenv-virtualenv
[ -d "$pyenv_home/plugins/pyenv-virtualenv" ] ||
  git clone https://github.com/yyuu/pyenv-virtualenv "$pyenv_home/plugins/"

# pyenv-which-ext
[ -d "$pyenv_home/plugins/pyenv-virtualenv" ] ||
  git clone https://github.com/pyenv/pyenv-which-ext "$pyenv_home/plugins/"
