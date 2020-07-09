#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

COMMENT=\#*
REPO_PATH=$(realpath ~/repos)

find * -name "*.list" | while read fn; do
    folder="${fn%.*}"

    info "Cloning $folder repositories..."

    substep_info "Creating $folder folder..."
    mkdir -p "$REPO_PATH/$folder"
    while read repo; do
        if [[ $repo == $COMMENT ]];
        then continue; else
            pushd "$REPO_PATH/$folder" &> /dev/null
            git clone $repo &> /dev/null
            status="$?"
            if [[ $status -eq 128 ]]; then
                substep_success "$repo already exists."
            elif [[ $status -eq 0 ]]; then
                substep_success "Cloned $repo."
            else
                echo $status
                substep_error "Failed to clone $repo."
            fi
            popd &> /dev/null
        fi
    done < "$fn"
    success "Finished cloning $folder repositories."
done
