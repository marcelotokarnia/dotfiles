set -l services (find ~/repos/prof/klarna-app/services -mindepth 1 -maxdepth 1 -type d)
for service in $services
    set -a services_basenames (basename $service)
end

complete -f -c nut -n "not __fish_seen_subcommand_from $services_basenames" -a "$services_basenames"
complete -f -c nut -n "__fish_seen_subcommand_from $services_basenames" -a "eu us ap"
