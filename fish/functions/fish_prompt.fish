function fish_prompt
    set -l retc red
    test $status = 0; and set retc green

    set -g __fish_git_prompt_showupstream verbose
    set -g __fish_git_prompt_show_informative_status


    function _nim_prompt_wrapper
        set retc $argv[1]
        set field_name $argv[2]
        set field_value $argv[3]

        set_color normal
        set_color $retc
        echo -n '─'
        set_color -o green
        echo -n '['
        set_color normal
        test -n $field_name
        and echo -n $field_name:
        set_color $retc
        echo -n $field_value
        set_color -o green
        echo -n ']'
    end

    set_color $retc
    echo -n '┬─'
    set_color -o green
    echo -n [
    set_color -o white
    echo -n (pwd)
    set_color -o green
    echo -n ']'

    # Virtual Environment
    set -q VIRTUAL_ENV_DISABLE_PROMPT
    or set -g VIRTUAL_ENV_DISABLE_PROMPT true
    set -q VIRTUAL_ENV
    and _nim_prompt_wrapper $retc V (basename "$VIRTUAL_ENV")

    # git
    set prompt_git (fish_git_prompt | string trim -c ' ()')
    test -n "$prompt_git"
    and _nim_prompt_wrapper $retc Git $prompt_git

    # New line
    echo

    # Background jobs
    set_color normal
    for job in (jobs)
        set_color $retc
        echo -n '│ '
        set_color brown
        echo $job
    end
    set_color normal
    set_color $retc
    echo -n '╰─>'
    set_color -o red
    echo -n '🐠 '
    set_color normal
end