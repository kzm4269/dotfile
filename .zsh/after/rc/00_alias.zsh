_alias() { echo alias $(alias $1 || echo "'$1=$1'")"'${2:gs/\'/"'\\''"/}'"; }

# -- basic
alias sudo='sudo -E '

alias ls='ls -h'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'

case "$OSTYPE" in
  linux*)
    eval $(_alias ls ' --time-style="+%Y-%m-%d %H:%M:%S"');;
esac

alias du='du -h'
alias df='df -h'
alias su='su -l'

alias jobs='jobs -l'

function findre() {
  if [[ ${1:-} =~ ^(-[^A-Z]|[!\(\)]$) ]]; then
    command find -regextype posix-extended "$@"
  else
    command find "$1" -regextype posix-extended "${@:2}"
  fi
}

# -- color
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

has 'colordiff' &&
  alias diff='colordiff -u' ||
  alias diff='diff -u'

case "$OSTYPE" in
  freebsd*|darwin*)
    eval $(_alias ls ' -G -w');;
  linux*)
    eval $(_alias ls ' --color=auto');;
esac

# -- zmv
autoload -Uz zmv
alias mmv='noglob zmv -W'

# -- single character
alias X='xargs -I{}'

case "$OSTYPE" in
  freebsd*|darwin*)
    alias O='open';;
  linux*)
    alias O='xdg-open';;
esac

# -- auto ls
function __chpwd_auto_ls() { 
  if has tput && (( $(ls --format=horizontal | wc -l) < $(tput lines) - 3 )); then
    ls
  else
    echo "... $(ls | wc -l) files ..." 
  fi
}
chpwd_functions=($chpwd_functions __chpwd_auto_ls)

# -- vim
if has nvim; then
  alias vim=nvim
fi

# -- exa
if has exa; then
  eval $(_alias exa ' --time-style=long-iso --git --binary --group')
  alias l='exa'
  
  alias la='exa --all'
  alias lt='exa --tree'
  
  alias ll='exa --long'
  alias lla='exa --long --all'
  alias llt='exa --long --tree'
fi
