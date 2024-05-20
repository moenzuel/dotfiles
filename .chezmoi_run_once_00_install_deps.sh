#!/bin/sh

{{ if eq .chezmoi.osRelease.id "debian" }}

  sudo apt-get update
  sudo apt-get install -y curl git

{{ end }}
