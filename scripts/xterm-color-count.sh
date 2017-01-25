#!/bin/bash
# xterm-color-count
# Count how many colors your XTerm actually supports
# https://github.com/l0b0/xterm-color-count

export XTERM_COLOR_COUNT
printf '\e]4;%d;?\a' 0
read -d $'\a' -s -t 0.1 </dev/tty
if [ -z "$REPLY" ]; then
  # OSC 4 not supported, so we'll fall back to terminfo 
  XTERM_COLOR_COUNT=$(tput colors)
else
  # OSC 4 is supported, so use it for a binary search 
  __xterm_color_count=0
  XTERM_COLOR_COUNT=256
  while [[ $((__xterm_color_count + 1)) -lt $max ]]; do
    i=$(( (__xterm_color_count + XTERM_COLOR_COUNT) / 2 ))
    printf '\e]4;%d;?\a' $i
    read -d $'\a' -s -t 0.1 </dev/tty
    if [ -z "$REPLY" ]; then
      XTERM_COLOR_COUNT=$i
    else
      __xterm_color_count=$i
    fi
  done
fi
unset __xterm_color_count
