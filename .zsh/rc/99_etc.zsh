[ -s ~/.gibo/gibo-completion.zsh ] &&
  source ~/.gibo/gibo-completion.zsh

[ -s ~/.autojump/share/autojump/autojump.zsh ] &&
  source ~/.autojump/share/autojump/autojump.zsh

if has pip; then
  # eval "$(pip completion --zsh)"  # too slow
  
  function _pip_completion {
    local words cword
    read -Ac words
    read -cn cword
    reply=( $( COMP_WORDS="$words[*]" \
      COMP_CWORD=$(( cword-1 )) \
      PIP_AUTO_COMPLETE=1 $words[1] ) )
  }
  compctl -K _pip_completion pip
fi
