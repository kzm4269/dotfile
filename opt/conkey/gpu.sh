#!/bin/bash
set -eu
n=$(nvidia-settings -q GpuUtilization | grep 'Attribute' | grep -c ^)
for i in $(seq 0 $(($n - 1))); do
  gpuutil='${nvidia gpuutil '$i'}'
  gpuutil='${lua_bar 6,50 format %d '$gpuutil'}${lua_parse format %3s '$gpuutil'}%'
  memutil='${nvidia memutil '$i'}'
  memutil='${lua_bar 6,50 format %d '$memutil'}${lua_parse format %3s '$memutil'}%'
  echo $(printf "%${#n}d\t" $i)' G '$gpuutil' / M '$memutil''
done
