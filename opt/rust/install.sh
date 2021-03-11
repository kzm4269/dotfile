#!/bin/bash
set -eu

if [[ -e "${HOME}/.cargo" ]]; then
  curl https://sh.rustup.rs -sSf | sh
fi
