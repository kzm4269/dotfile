[[ -f ~/.fzf.zsh ]] && source ~/.fzf.zsh

export FZF_DEFAULT_OPTS='
--ansi
--multi
--cycle
--reverse
--bind ctrl-f:page-down,ctrl-b:page-up
'

export FZF_CTRL_R_OPTS='
--reverse
'

if [ "$(tput colors)" -ge 256 ]; then
  export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS"'
  --color fg:252
  --color bg:233
  --color hl:003
  --color fg+:252
  --color bg+:235
  --color hl+:011
  --color info:144
  --color prompt:161
  --color spinner:135
  --color pointer:135
  --color marker:11
  '
fi

export FZF_COMPLETION_TRIGGER='~~'

export FZF_CTRL_T_COMMAND='rg --files --hidden --follow --glob "!.git/*" 2>/dev/null'
export FZF_CTRL_T_OPTS='--preview "bat  --color=always --style=header,grid --line-range :100 {}"'
