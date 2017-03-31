# -- basic
alias sudo='sudo '

alias la='ls -A'
alias ll='ls -lh'
alias lla='ls -lhA'

alias du="du -h"
alias df="df -h"
alias su="su -l"

alias jobs='jobs -l'

# -- color
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

has 'colordiff' &&
  alias diff='colordiff -u' ||
  alias diff='diff -u'

is_darwin && alias ls='ls -G -w -F'
is_linux && alias ls='ls --color=auto -F'

# -- zmv
autoload -Uz zmv
alias zmvw='noglob zmv -W'

# -- single character
alias G="grep"
alias L="less"
alias S="sort"
alias T="tail"
alias H="head"
alias X="xargs -I{}"

has fzf && alias F="fzf"

case "$OSTYPE" in
  freebsd*|darwin*) alias O="open";;
  linux*) alias O="xdg-open";;
esac

# -- etc
has trash-put && alias tp='trash-put'

if has keychain; then
  alias eval_keychain='eval "$(keychain --eval --quiet --agents ssh id_rsa)"'
fi
