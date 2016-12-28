setopt prompt_subst

function precmd() {
  case "$TERM" in
    xterm*|kterm*)
      echo -ne "\e]0;${USER}@${HOST%%.*} : ${PWD}\007"
      ;;
  esac
}

function __prompt() {
  autoload -Uz vcs_info
  zstyle ':vcs_info:*' formats '%b'
  zstyle ':vcs_info:*' actionformats '%b|%a'
  vcs_info
  
  local vcs
  [ -n "$vcs_info_msg_0_" ] && vcs=":%F{green}$vcs_info_msg_0_%f"
  
  echo "[%m:%F{yellow}%~%f$vcs]"
  echo "%n%(?.%%.%F{red}%%%f) "
}

PROMPT='$(__prompt)'
