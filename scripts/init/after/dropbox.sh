#!/bin/bash
set -eu
dropbox_home="$HOME/.dropbox-dist"
dropbox_cli="$HOME/local/bin/dropbox"

if [[ -d "$dropbox_home" ]]; then
  cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
fi

wget -O - "https://www.dropbox.com/download?dl=packages/dropbox.py" > "$dropbox_cli"
