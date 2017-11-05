#!/bin/bash
dropbox_cli="$HOME/local/bin/dropbox"

wget -O - "https://www.dropbox.com/download?dl=packages/dropbox.py" > "$dropbox_cli"
