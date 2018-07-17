#!/bin/bash
set -eu

_fs_info() {
  fs="$1"
  dev="$(df --output=source "$fs" | tail -1)"
  [[ $dev = tmpfs || $dev = udev ]] && return 0
  [[ $dev =~ ^/dev/loop[0-9]*$ ]] && return 0
  
  fs_short="$fs"
  [[ ${#fs_short} -gt 15 ]] && fs_short="${fs_short##*/}"
  
  echo "$fs_short"'${alignr}${fs_used '"$fs"'}/${fs_size '"$fs"'}'
  echo '${fs_bar 6,200 '"$fs"'}${alignr}${fs_used_perc '"$fs"'}%'
}

df --output=target | uniq | tail +2 | while read fs; do _fs_info "$fs"; done
