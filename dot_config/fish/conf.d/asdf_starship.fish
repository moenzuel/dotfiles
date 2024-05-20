if status is-interactive
  if type -q asdf
    asdf exec starship init fish | source
  end
end
