#/bin/bash
set -eu
n=$(grep -c processor /proc/cpuinfo)
for i in $(seq 1 $n); do
  echo $(printf "%${#n}d\t" $i)'${cpubar cpu'$i' 6,200}${alignr}${cpu cpu'$i'}%'
done
