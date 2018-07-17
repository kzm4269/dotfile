function auto_ls() { 
  if has tput && (( $(ls --format=horizontal | wc -l) < $(tput lines) - 3 )); then
    ls
  else
    echo "... $(ls | wc -l) files ..." 
  fi
}
chpwd_functions=($chpwd_functions auto_ls)

[ -s ~/.gibo/gibo-completion.zsh ] &&
  source ~/.gibo/gibo-completion.zsh
