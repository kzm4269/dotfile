#!/bin/bash
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
sudo $apt install -y build-essential
sudo $apt install -y cmake
sudo $apt install -y curl
sudo $apt install -y fcitx-mozc
sudo $apt install -y ffmpeg
sudo $apt install -y gimp
sudo $apt install -y git
sudo $apt install -y golang
sudo $apt install -y imagemagick
sudo $apt install -y inkscape
sudo $apt install -y libncurses5-dev
sudo $apt install -y p7zip
sudo $apt install -y subversion
sudo $apt install -y tmux
sudo $apt install -y unar
sudo $apt install -y vim-gnome
sudo $apt install -y xsel
sudo $apt install -y zsh
