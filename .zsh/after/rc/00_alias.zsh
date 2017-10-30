# -- basic
alias sudo='sudo '

alias ls='ls -hF'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'

alias du='du -h'
alias df='df -h'
alias su='su -l'

alias jobs='jobs -l'

# -- color
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

has 'colordiff' &&
  alias diff='colordiff -u' ||
  alias diff='diff -u'

case "$OSTYPE" in
  freebsd*|darwin*) alias ls='ls -G -w';;
  linux*) alias ls='ls --color=auto';;
esac

# -- zmv
autoload -Uz zmv
alias zmvw='noglob zmv -W'

# -- single character
alias G='grep'
alias L='less'
alias S='sort'
alias T='tail'
alias H='head'
alias X='xargs -I{}'

has fzf && alias F='fzf'

case "$OSTYPE" in
  freebsd*|darwin*) alias O='open';;
  linux*) alias O='xdg-open';;
esac
