#!/bin/bash

if test -z "${BASH_VERSION:-}" -a -z "${ZSH_VERSION:-}"; then
  echo "not supported: $SHELL" >&2
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

