# ls
eval `dircolors -b ~/.dir_colors`
export ZLS_COLORS=$LS_COLORS
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# man
export LESS_TERMCAP_mb=$'\e[01;31m'
export LESS_TERMCAP_md=$'\e[01;31m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[00;44;37m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[01;32m'

# zsh-syntax-highlight
typeset -g -A ZSH_HIGHLIGHT_STYLES
function () {
  local c_error="fg=red,bold"
  local c_callable="fg=green"
  local c_reserved="fg=green"
  local c_quoted="fg=yellow"
  local c_comment="fg=black,bold"
  local c_expansion="fg=cyan"
  local c_path="none"
  local c_separator="fg=red"

  ZSH_HIGHLIGHT_STYLES[default]="none"
  ZSH_HIGHLIGHT_STYLES[unknown-token]="$c_error"
  ZSH_HIGHLIGHT_STYLES[reserved-word]="$c_reserved"
  ZSH_HIGHLIGHT_STYLES[alias]="$c_callable"
  ZSH_HIGHLIGHT_STYLES[suffix-alias]="$c_callable,underline"
  ZSH_HIGHLIGHT_STYLES[builtin]="$c_callable"
  ZSH_HIGHLIGHT_STYLES[function]="$c_callable"
  ZSH_HIGHLIGHT_STYLES[command]="$c_callable"
  ZSH_HIGHLIGHT_STYLES[precommand]="$c_callable,underline"
  ZSH_HIGHLIGHT_STYLES[commandseparator]="$c_separator"
  ZSH_HIGHLIGHT_STYLES[hashed-command]="$c_callable"
  ZSH_HIGHLIGHT_STYLES[path]="$c_path"
  ZSH_HIGHLIGHT_STYLES[path_pathseparator]="$c_path"
  ZSH_HIGHLIGHT_STYLES[path_prefix]="$c_path"
  ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]=""
  ZSH_HIGHLIGHT_STYLES[globbing]="$c_expansion"
  ZSH_HIGHLIGHT_STYLES[history-expansion]="$c_expansion"
  ZSH_HIGHLIGHT_STYLES[single-hyphen-option]="none"
  ZSH_HIGHLIGHT_STYLES[double-hyphen-option]="none"
  ZSH_HIGHLIGHT_STYLES[back-quoted-argument]="$c_expansion"
  ZSH_HIGHLIGHT_STYLES[single-quoted-argument]="$c_quoted"
  ZSH_HIGHLIGHT_STYLES[double-quoted-argument]="$c_quoted"
  ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]="$c_quoted"
  ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]="$c_expansion"
  ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]="$c_expansion"
  ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]="$c_expansion"
  ZSH_HIGHLIGHT_STYLES[assign]="none"
  ZSH_HIGHLIGHT_STYLES[redirection]="$c_reserved"
  ZSH_HIGHLIGHT_STYLES[comment]="$c_comment"
}
