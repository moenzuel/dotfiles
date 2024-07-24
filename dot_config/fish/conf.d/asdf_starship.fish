if status is-interactive
  if type -q asdf
    if type -q starship
      asdf exec starship init fish | source
    end
  end
end
