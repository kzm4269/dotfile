#!/bin/bash
set -eu

sudo -v || exit
sudo add-apt-repository ppa:ubuntu-lxc/lxd-stable
sudo apt-get update

# cli
sudo apt-get install \
  aptitude \
  build-essential \
  cmake \
  curl \
  subversion \
  git \
  tmux \
  zsh \
  vim-gtk \
  golang \
  libncurses5-dev \
  autojump \
  trash-cli \
  xsel

# gui
sudo apt-get install \
  fcitx-mozc
