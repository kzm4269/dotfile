[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
has fzf || return

export FZF_DEFAULT_OPTS='
--ansi
--multi
--tac
--bind ctrl-f:page-down,ctrl-b:page-up
'
export FZF_CTRL_R_OPTS='
--reverse
'

if [[ "$TERM" = *256* ]]; then
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
