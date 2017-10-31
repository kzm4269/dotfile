#/bin/bash
for sdx in $(\ls /dev/sd?); do
  echo $sdx
  echo '${diskiograph_read '$sdx' 12,180}${alignr}${diskio_read '$sdx'}'
  echo '${diskiograph_write '$sdx' 12,180}${alignr}${diskio_write '$sdx'}'
done
