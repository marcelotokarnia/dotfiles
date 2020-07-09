for service in (find ~/repos/prof/klarna-app/services -mindepth 1 -maxdepth 1 -type d)
    complete -f -c ser -a "(basename \"$service\")"
end
