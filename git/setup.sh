#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

SOURCE="/Users/mtok/repos/personal/dotfiles/git"
DESTINATION="/Users/mtok"

info "Configuraing git..."

find . -name ".git*" | while read fn; do
    fn=$(basename $fn)
    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done

success "Finished configuring git."
