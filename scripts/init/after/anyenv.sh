#!/bin/bash
set -eu
anyenv_home="$HOME/.anyenv"
anyenv="$anyenv_home/bin/anyenv"
pyenv_home="$anyenv_home/envs/pyenv"

# anyenv
if [[ ! -d "$anyenv_home" ]]; then
  git clone https://github.com/riywo/anyenv "$anyenv_home"
fi
eval "$("$anyenv" init -)"

# pyenv
if [[ ! -d "$pyenv_home" ]]; then
  "$anyenv" install pyenv
fi

# pyenv-virtualenv
if [[ ! -d "$pyenv_home/plugins/pyenv-virtualenv" ]]; then
  git clone https://github.com/yyuu/pyenv-virtualenv "$pyenv_home/plugins/"
fi

# pyenv-which-ext
if [[ ! -d "$pyenv_home/plugins/pyenv-virtualenv" ]]; then
  git clone https://github.com/pyenv/pyenv-which-ext "$pyenv_home/plugins/"
fi
