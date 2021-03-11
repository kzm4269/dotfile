#/bin/bash
for sdx in /dev/sd?; do
  echo $sdx
  echo '${diskiograph_read '$sdx' 12,170} R ${alignr}${diskio_read '$sdx'}'
  echo '${diskiograph_write '$sdx' 12,170} W ${alignr}${diskio_write '$sdx'}'
done
