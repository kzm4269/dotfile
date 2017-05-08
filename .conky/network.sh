#!/bin/bash
target='eth\d+|wlan\d+|enp\d+s\d+(f\d+)?|wlp\d+s\d+'
for name in $(ip a | perl -nle 'print $1 if /inet .* ('$target')$/'); do
  echo $name'${alignr}${addr '$name'}'
  echo '${upspeedgraph '$name' 12,120}${alignr}${upspeed '$name'}/${totalup '$name'}'
  echo '${downspeedgraph '$name' 12,120}${alignr}${downspeed '$name'}/${totaldown '$name'}'
done
