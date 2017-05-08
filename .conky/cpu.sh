#/bin/bash
for i in $(seq 1 $(grep -c processor /proc/cpuinfo)); do
  echo '${cpubar cpu'$i' 6,200}${alignr}${cpu cpu'$i'}%'
done
