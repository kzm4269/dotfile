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
  zstyle ':vcs_info:*' formats '%b%c%u'
  zstyle ':vcs_info:*' actionformats '%b|%a'
  vcs_info
  
  local vcs
  [ -n "$vcs_info_msg_0_" ] && vcs=":%F{green}$vcs_info_msg_0_%f"
  
  echo "[%m:%F{yellow}%~%f$vcs]"
  echo '%n%(?.$.%F{red}$%f) '
}

function __rprompt() {
  local dir
  [[ -n ${DIRENV_DIR:-} ]] && dir="[%F{green}${DIRENV_DIR#-}%f]"
  
  local py
  has pyenv && [[ $(pyenv version-name) != system ]] && py="$(pyenv version-name)"
  [[ -n $VIRTUAL_ENV ]] && py="$(basename "${VIRTUAL_ENV%%/.venv}")"
  [[ -n $py ]] && py="Py:%F{green}$py%f"
  
  local rb
  has rbenv && [[ $(rbenv version-name) != system ]] && rb="$(rbenv version-name)"
  [[ -n $rb ]] && rb="Rb:%F{green}$rb%f"
  
  local env
  env=($py $rb $dir)
  
  echo "${(j: :)env}"
}

PROMPT='$(__prompt)'
RPROMPT='$(__rprompt)'
export VIRTUAL_ENV_DISABLE_PROMPT=1
