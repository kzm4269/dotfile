if has keychain; then
  for privkey in ~/.ssh/id_*~*.pub; do
    keychain --nogui --quiet "$privkey"
  done
  
  if [[ -f ~/.keychain/$HOST-sh ]]; then
    source ~/.keychain/$HOST-sh
  fi
fi
