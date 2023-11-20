#!/bin/sh

set -e # -e: exit on error

# ASDF
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.13.1

asdf plugin add chezmoi
asdf plugin add direnv
asdf plugin add starship

# chezmoi
asdf install chezmoi 2.41.0
asdf local chezmoi 2.41.0
chezmoi init --apply moenzuel

# font
# git clone https://github.com/githubnext/monaspace.git
# cd util
# bash ./install_linux.sh
# bash ./install_macos.sh
