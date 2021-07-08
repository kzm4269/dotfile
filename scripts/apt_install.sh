#!/bin/bash
has() { type $1 &>/dev/null; }

if has apt-fast; then
  apt=apt-fast
elif has apt; then
  apt=apt
elif has aptitude; then
  apt=aptitude
elif has apt-get; then
  apt=apt-get
else
  exit 1
fi

sudo $apt update || exit 1

sudo $apt install -y \
  build-essential \
  cmake \
  curl \
  unar \
  tmux \
  zsh \
  golang \
  xsel \

