#!/bin/sh

set -e # -e: exit on error

# ASDF
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2
cat <<EOF >> ~/.zshrc
# ASDF
. $HOME/.asdf/asdf.sh
# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit
EOF

# Chezmoi
asdf plugin add chezmoi
asdf install chezmoi latest
asdf global chezmoi latest

# Starship
asdf plugin add starship
asdf install starship latest
asdf global starship latest
cat <<EOF >> ~/.zshrc
# Starship
eval "$(asdf exec starship init zsh)" 
EOF

# direnv
asdf plugin-add direnv
asdf direnv setup --shell bash --version latest

# 1Password-CLI
asdf plugin add 1password-cli
asdf install 1password-cli latest
asdf global 1password-cli latest

