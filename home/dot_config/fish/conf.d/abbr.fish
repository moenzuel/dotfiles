if type -q chezmoi
    abbr cm chezmoi
end

if type -q lsd
    abbr ls lsd
    abbr l lsd -l
    abbr la lsd -a
    abbr lla lsd -la
    abbr lt lsd --tree
else
    abbr l ls -l
    abbr la ls -a
    abbr lla ls -la
end
