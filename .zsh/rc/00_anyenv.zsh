path=($HOME/.direnv $HOME/.anyenv/bin $path)

if has direnv; then
  eval "$(direnv hook zsh)"
fi

if has anyenv; then
  eval "$(anyenv init - zsh)"
fi
