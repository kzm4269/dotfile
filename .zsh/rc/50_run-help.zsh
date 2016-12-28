autoload -Uz run-help
autoload -Uz run-help-git
autoload -Uz run-help-openssl
autoload -Uz run-help-p4
autoload -Uz run-help-sudo
autoload -Uz run-help-svk
autoload -Uz run-help-svn

export HELPDIR="$HOME/.zsh_help"
[ ! -e "$HELPDIR" ] && mkdir -p "$HELPDIR"

function install-zsh-help() { 
  "$@" >& "$HELPDIR/${1:t}"
}

