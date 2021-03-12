#!/bin/bash
_conf() {
  tmux_version="$(tmux -V | sed -e 's/[^0-9]//g')"
  
  if [[ $tmux_version -lt 24 ]]; then
    echo '
    bind -t vi-copy v     begin-selection
    bind -t vi-copy C-v   rectangle-toggle
    bind -t vi-copy C-[   clear-selection
    bind -t vi-copy y     copy-selection
    bind -t vi-copy Enter copy-selection
    '
    
    if which xsel >/dev/null 2>&1; then
      echo '
      bind -t vi-copy y     copy-pipe "xsel -ib"
      bind -t vi-copy Enter copy-pipe "xsel -ib"
      '
    fi
  else
    echo '
    bind -T copy-mode-vi v     send-keys -X begin-selection
    bind -T copy-mode-vi C-v   send-keys -X rectangle-toggle
    bind -T copy-mode-vi C-[   send-keys -X clear-selection
    bind -T copy-mode-vi y     send-keys -X copy-selection
    bind -T copy-mode-vi Enter send-keys -X copy-selection
    '
    
    if which xsel >/dev/null 2>&1; then
      echo '
      bind -T copy-mode-vi y     send-keys -X copy-pipe "xsel -ib"
      bind -T copy-mode-vi Enter send-keys -X copy-pipe "xsel -ib"
      '
    fi
  fi
}

_conf > "$HOME/.tmux/tmux.local.conf"
