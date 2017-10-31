function auto_ls() { ls; }
chpwd_functions=($chpwd_functions auto_ls)

[ -s ~/.gibo/gibo-completion.zsh ] &&
  source ~/.gibo/gibo-completion.zsh
