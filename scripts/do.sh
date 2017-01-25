#!/bin/bash
set -u
source "$DOTPATH/scripts/vital.sh" || return 1

[ ! -d "$1" ] && exit
printf "do: %s\n" "$1/"

"$SHELL" "$0" "$1/before"

for fname in $(\ls "$1" | grep -e '\.sh$' | sort); do
  fname="$1/$fname"
  if [ -f "$fname" ]; then
    printf "do: %s\n" "$fname"
    if [ "${DEBUG:-}" != 1 ]; then
      "$SHELL" "$fname"
    fi
  fi
done

is_linux && "$SHELL" "$0" "$1/linux"
is_darwin && "$SHELL" "$0" "$1/darwin"
has apt-get && "$SHELL" "$0" "$1/apt"

"$SHELL" "$0" "$1/after"
