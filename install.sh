#!/bin/sh

set -e # -e: exit on error

# Chezmoi
if [ ! "$(command -v chezmoi)" ]; then
  bin_dir="$HOME/.local/bin"
  if [ "$(command -v curl)" ]; then
    sh -c "$(curl -fsSL https://git.io/chezmoi)" -- -b "$bin_dir"
  elif [ "$(command -v wget)" ]; then
    sh -c "$(wget -qO- https://git.io/chezmoi)" -- -b "$bin_dir"
  else
    echo "To install chezmoi, you must have curl or wget installed." >&2
    exit 1
  fi
fi

chezmoi init --apply moenzuel

# ASDF
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2
# cut -d\ -f1 .tool-versions|grep -E '^[^#]'|xargs -L1 asdf plugin add
asdf install

# direnv
asdf direnv setup --shell bash --version latest

# 1Password-CLI


