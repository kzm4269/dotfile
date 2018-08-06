#!/bin/bash
set -eu
latest=$(curl https://github.com/direnv/direnv/releases/latest | perl -lne 'print $1 if m!/(v[0-9.]+)"!')
direnv_home="$HOME/.direnv"

case "$(uname -sm)" in
  'Linux armv7l')
    suffix='linux-arm';;
  'Linux x86_64')
    suffix='linux-amd64';;
  *) 
    echo 'unknown machine: '$(uname -sm) >&2
    exit 1
esac

direnv_basename="direnv.$latest.$suffix"
if [[ -e "$direnv_home/$direnv_basename" ]]; then
  exit
fi

mkdir -p "$direnv_home"
wget https://github.com/direnv/direnv/releases/download/$latest/direnv.$suffix -O "$direnv_home/$direnv_basename"
chmod u+x "$direnv_home/$direnv_basename"
ln -snf "$direnv_basename" "$direnv_home/direnv"
