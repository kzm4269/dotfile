#!/bin/bash
\df | perl -nle 'print "$1 $2" if m!^(/\S+) .*% (.+)$!' | \
	while read m; do
		dev=${m%% *}
		fs=${m##* }
		fs_short="${fs## *}"
		[ ${#fs_short} -gt 15 ] && fs_short="${fs_short##*/}"
		[ ${#fs_short} -gt 15 ] && fs_short="${dev}"
		echo $fs_short'${alignr}${fs_used '$fs'}/${fs_size '$fs'}'
		echo '${fs_bar 6,200 '$fs'}${alignr}${fs_used_perc '$fs'}%'
	done
