function source_completions --on-variable LOCAL_FISH_COMPLETION_DIR
    for cf in $LOCAL_FISH_COMPLETION_DIR/*.fish
        if test (basename $cf) = "mise.fish"
            continue
        end
        source < $cf
    end
end
