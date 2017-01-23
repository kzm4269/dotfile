zplug 'zsh-users/zsh-completions'
zplug 'zsh-users/zsh-history-substring-search'
zplug 'zsh-users/zsh-syntax-highlighting'
zplug 'l0b0/xterm-color-count', \
  as:command, \
  use:xterm-color-count.sh, \
  rename-to:xterm-color-count

[ -s "$HOME/local/etc/zsh/zplug.zsh" ] &&
  source "$HOME/local/etc/zsh/zplug.zsh"
