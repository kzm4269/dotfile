#!/bin/bash
set -eu
anyenv_home="$HOME/.anyenv"
anyenv="$anyenv_home/bin/anyenv"

# anyenv
[ -d "$anyenv_home" ] ||
  git clone https://github.com/riywo/anyenv "$anyenv_home"
eval "$("$anyenv" init -)"

# pyenv
[ -d "$anyenv_home/envs/pyenv" ] ||
  "$anyenv" install pyenv

# pyenv-virtualenv
[ -d "$anyenv_home/envs/pyenv/plugins/pyenv-virtualenv" ] ||
  git clone https://github.com/yyuu/pyenv-virtualenv "$anyenv_home/envs/pyenv/plugins/pyenv-virtualenv"
