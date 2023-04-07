function setup
    for abbreviation in (abbr -l)
        abbr -e $abbreviation
    end
    abbr g "git"
    abbr c "code ."
    
    abbr gs "git status"
    abbr ga "git add -A"
    abbr gc "git commit -m"
    abbr gl "git log"
    abbr gd "git diff"
    abbr gds "git diff --shortstat"

    abbr gf "git fetch"
    abbr gpl "git pull --ff-only origin (git rev-parse --abbrev-ref HEAD)"
    abbr gp "git push"
    abbr gpf "git push --force"

    abbr gr "git rebase origin/main"
    abbr grc "git rebase --continue"
    abbr gra "git rebase --abort"
    
    
    abbr gco "git checkout"
    abbr gcm "git checkout main"
    abbr gcb "git checkout -"
    abbr ll "ls -lhA"

    abbr t "yarn test"
    abbr b "yarn build"
    abbr bb "yarn build:back"
    abbr bs "yarn build & yarn start"
    abbr s "yarn start"
    abbr fu "fnm use"

    abbr karin "open https://practice.karindimitrovova.com/courses/enrolled/707539"
end
