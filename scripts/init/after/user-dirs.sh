#!/bin/bash
set -eu

type xdg-user-dirs-update &>/dev/null || exit
rm ~/.config/user-dirs.{dirs,locale}
xdg-user-dirs-update
