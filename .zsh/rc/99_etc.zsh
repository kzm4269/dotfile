[ -s ~/.gibo/gibo-completion.zsh ] &&
  source ~/.gibo/gibo-completion.zsh

[ -s ~/.autojump/share/autojump/autojump.zsh ] &&
  source ~/.autojump/share/autojump/autojump.zsh

if has pip; then
  eval "$(pip completion --zsh)"
fi
