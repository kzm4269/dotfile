#!/bin/bash
has() { type $1 &>/dev/null; }

if has apt; then
  apt=apt
elif has aptitude; then
  apt=aptitude
elif has apt-get; then
  apt=apt-get
else
  exit 1
fi

sudo $apt update || exit 1

#  build
sudo $apt install -y build-essential
sudo $apt install -y cmake

# network
sudo $apt install -y curl

# archive
sudo $apt install -y unar

# terminal
sudo $apt install -y tmux
sudo $apt install -y zsh
sudo $apt install -y golang
sudo $apt install -y xsel
