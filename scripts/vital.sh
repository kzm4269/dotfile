#!/bin/bash

if test -z "${BASH_VERSION:-}" -a -z "${ZSH_VERSION:-}"; then
  echo "shell not supported" >&2
  return 1
fi

# check environment
has() { type "$@" &>/dev/null; }
is_login_shell() { [ "$SHLVL" = 1 ]; }
is_interactive_shell() { [[ "$-" = *i* ]]; }
is_bash() { [ -n "${BASH_VERSION:-}" ]; }
is_zsh() { [ -n "${ZSH_VERSION:-}" ]; }
is_ssh() { [ -n "${SSH_CONNECTION:-}" ]; }
is_screen() { [ -n "${STY:-}" ]; }
is_tmux() { [ -n "${TMUX:-}" ]; }
is_linux() { [[ "$(uname)" = Linux ]]; }
is_darwin() { [[ "$(uname)" = Darwin ]]; }
is_git_repo() { git rev-parse --is-inside-work-tree &>/dev/null; }

# string
strlen() { echo ${#1}; }
strstr() { [[ "$1" = *"$2"* ]]; }
isdigit() { [ "$1" -eq "$1" ] &>/dev/null; }
lower() { 
  [ $# -gt 1 ] && return 1
  ([ $# -eq 0 ] && cat <&0 || echo "$1") | tr '[:upper:]' '[:lower:]'
}
upper() { 
  [ $# -gt 1 ] && return 1
  ([ $# -eq 0 ] && cat <&0 || echo "$1") | tr '[:lower:]' '[:upper:]'
}

# alias
_alias_stack=()
alias_push() {
  is_bash && _alias_stack=(${_alias_stack[@]} "$(alias -p)")
  is_zsh && _alias_stack=(${_alias_stack[@]} "$(alias -L)")
  unalias -a
}
alias_pop() {
  is_zsh && setopt localoptions ksharrays
  eval "${_alias_stack[0]}"
  is_bash && _alias_stack=${_alias_stack[@]:1}
  is_zsh && _alias_stack=${_alias_stack[@]:1}
}

# etc

ask() {
  # http://djm.me/ask
  local prompt default REPLY

  while true; do

    if [ "${2:-}" = "Y" ]; then
      prompt="Y/n"
      default=Y
    elif [ "${2:-}" = "N" ]; then
      prompt="y/N"
      default=N
    else
      prompt="y/n"
      default=
    fi

    # Ask the question (not using "read -p" as it uses stderr not stdout)
    echo -n "$1 [$prompt] "

    # Read the answer (use /dev/tty in case stdin is redirected from somewhere else)
    read REPLY </dev/tty

    # Default?
    if [ -z "$REPLY" ]; then
      REPLY=$default
    fi

    # Check if the reply is valid
    case "$REPLY" in
      Y*|y*) return 0 ;;
      N*|n*) return 1 ;;
    esac

  done
}
