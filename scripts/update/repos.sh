#!/bin/bash
repos=(~/.fzf ~/.direnv ~/.anyenv ~/.anyenv/envs/pyenv ~/.zplug)
for repo in "${repos[@]}"; do
  if [ -d "$repo" ]; then
    echo "update: $repo"
    cd "$repo" && git reset --hard && git pull --force
  fi
done

if [ -d ~/.fzf ]; then
  ~/.fzf/install --key-bindings --completion --no-update-rc
fi
