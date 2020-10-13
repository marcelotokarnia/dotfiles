function randstrings
    cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w "$argv[1]" | head -n "$argv[2]"
end
