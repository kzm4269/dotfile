_alias() { echo alias $(alias $1 || echo "'$1=$1'")"'${2:gs/\'/"'\\''"/}'"; }

# -- sudo
alias sudo='sudo '

# -- zmv
autoload -Uz zmv
alias mmv='noglob zmv -W'

# -- vim
if has nvim; then
  alias vim='nvim'
fi

# -- exa
if has exa; then
  alias exa_='exa --time-style=long-iso --git --binary --group'
  alias ls='exa_'
  alias l='exa_'
  alias la='exa_ --all'
  alias lt='exa_ --tree'
  alias ll='exa_ --long'
  alias lla='exa_ --long --all'
  alias llt='exa_ --long --tree'
fi

# -- single character aliases
alias e="$EDITOR"
alias x='xargs -I{}'
case "$OSTYPE" in
  freebsd*|darwin*)
    alias o='open';;
  linux*)
    alias o='xdg-open';;
esac

# -- auto ls
function __chpwd_auto_ls() { 
  if has tput && (( $(l | wc -l) < $(tput lines) - 3 )); then
    l
  else
    echo "... $(l | wc -l) files ..." 
  fi
}
chpwd_functions=($chpwd_functions __chpwd_auto_ls)

