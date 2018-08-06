# completion options
setopt always_last_prompt
setopt always_to_end
setopt auto_list
setopt auto_menu
unsetopt auto_name_dirs
setopt auto_param_keys
setopt auto_param_slash
unsetopt auto_remove_slash
setopt complete_aliases
unsetopt complete_in_word
setopt glob_complete
setopt hash_list_all
setopt list_ambiguous
unsetopt list_beep
setopt list_packed
unsetopt list_rows_first
setopt list_types
unsetopt menu_complete
unsetopt rec_exact

# expansion and globbing options
setopt extended_glob 
setopt magic_equal_subst
setopt mark_dirs

# input/output options
unsetopt correct_all

# completion style
zstyle ':completion:*:default' menu select=2

zstyle ':completion:*' verbose yes
zstyle ':completion:*' group-name ''
zstyle ':completion:*' use-cache true
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:manuals' separate-sections true
zstyle ":completion:*:commands" rehash 1

zstyle ':completion:*' completer _expand _complete _match _prefix _approximate _list
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters

zstyle ':completion:*' list-separator '--'
zstyle ':completion:*:messages' format '%F{yellow}%d%f'
zstyle ':completion:*:warnings' format '%F{red}No matches for:%f%F{yellow} %d%f'
zstyle ':completion:*:descriptions' format '%F{yellow}completing %B%d%b%f'
zstyle ':completion:*:corrections' format '%F{yellow}%B%d%b%f%F{red}%B (%e)%b%f'


# functions

function _pip_completion {
  local words cword
  read -Ac words
  read -cn cword
  reply=( $( COMP_WORDS="$words[*]" \
    COMP_CWORD=$(( cword-1 )) \
    PIP_AUTO_COMPLETE=1 $words[1] ) )
}
compctl -K _pip_completion pip


[ -s ~/.gibo/gibo-completion.zsh ] &&
  source ~/.gibo/gibo-completion.zsh
