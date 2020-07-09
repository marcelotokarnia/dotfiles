function nut
    set cwd (pwd)
    cd ~/repos/prof/squirrels-nut-cracking-tools
    if test (count $argv) -lt 2
	./config -p "$argv[1]" -c eu -e staging
    else
        ./config -p "$argv[1]" -c "$argv[2]" -e staging
    end
    cd $cwd
end
