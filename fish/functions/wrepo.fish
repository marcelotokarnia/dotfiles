function wrepo
    set cwd (pwd)
    repo $argv
    set -l web_repo (string match "*url = git@github.com*" (cat .git/config))
    set -l web_repo (string replace -r ".*?url = git@" "https://" $web_repo)
    set -l web_repo (string replace ".com:" ".com/" $web_repo)
    set -l web_repo (string replace ".git" "" $web_repo)
    open $web_repo
    cd $cwd
end
