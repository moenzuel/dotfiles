#!/bin/sh

# Install asdf
install_asdf() {
  if [ ! -d "{{ .chezmoi.homeDir }}/.asdf" ]; then
    git clone https://github.com/asdf-vm/asdf.git "{{ .chezmoi.homeDir }}/.asdf" --branch v0.14.0
  fi
}

# Install asdf plugins
install_asdf_plugins() {
  . "{{ .chezmoi.homeDir }}/.asdf/asdf.sh"
  
  # Install direnv
  asdf plugin add direnv
  asdf install direnv latest
  asdf global direnv latest
  asdf direnv setup --shell fish --version latest

  # Install starship
  asdf plugin add starship
  asdf install starship latest
  asdf global starship latest
}

# Install asdf
install_asdf

# Install asdf plugins
install_asdf_plugins

echo "asdf installation and setup complete, including starship and direnv plugins."
