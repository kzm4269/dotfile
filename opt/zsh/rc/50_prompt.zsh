setopt prompt_subst

function __prompt() {
  autoload -Uz vcs_info
  zstyle ':vcs_info:*' formats '%R'$'\n''%b%c%u'
  zstyle ':vcs_info:*' actionformats '%b|%a'
  vcs_info
  
  local vcs
  if [[ -n "$vcs_info_msg_0_" ]]; then
    vcs=("${(@f)vcs_info_msg_0_}")
    vcs_root="${vcs[1]/#$HOME/~}"
    vcs_info="${vcs[2]}"
    
    if [[ $PWD =~ ^${vcs[1]} ]]; then
      vcs_root_to_pwd="${${PWD/#${vcs[1]}/}#/}"
      vcs="%F{yellow}$vcs_root%B/%b$vcs_root_to_pwd%f:%F{green}$vcs_info%f"
    else
      vcs="%F{yellow}%~%f:%F{green}$vcs_info%f@%F{green}$vcs_root%f"
    fi
  else
    vcs="%F{yellow}%~%f"
  fi
  
  echo "[%m:$vcs]"
  echo '%n%(?.$.%F{red}$%f) '
}

function __dirname() {
  chpwd_functions=()
  builtin cd "$@" && print -P %~
}

function __rprompt() {
  local dir
  [[ -n ${DIRENV_DIR:-} ]] && dir="[%F{yellow}$(__dirname ${DIRENV_DIR#-})%f]"
  
  local py
  has pyenv && [[ $(pyenv version-name) != system ]] && py="$(pyenv version-name)"
  [[ -n $VIRTUAL_ENV ]] && py="${${VIRTUAL_ENV%%/.venv}##*/}"
  [[ -n $py ]] && py="py:%F{green}$py%f"
  
  local rb
  has rbenv && [[ $(rbenv version-name) != system ]] && rb="$(rbenv version-name)"
  [[ -n $rb ]] && rb="rb:%F{green}$rb%f"
  
  local env
  env=($py $rb $dir)
  
  echo "${(j: :)env}"
}

PROMPT='$(__prompt)'
RPROMPT='$(__rprompt)'

export VIRTUAL_ENV_DISABLE_PROMPT=1
