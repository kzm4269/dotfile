s='!Z!'
[ $(tput cols) -ge 45 ] &>/dev/null && s='!ZSH!'
[ $(tput cols) -ge 64 ] &>/dev/null && s='!ZSHRC!'
printf "\e[0;${1:-0}m$s"
for i in {0..7}; do
  printf "\e[${1:-0};3${i}m$s\e[0m"
done
echo
