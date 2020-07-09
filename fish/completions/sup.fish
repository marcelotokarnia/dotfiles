for support in (find ~/repos/prof/klarna-app/support -mindepth 1 -maxdepth 1 -type d)
    complete -f -c sup -a "(basename \"$support\")"
end
