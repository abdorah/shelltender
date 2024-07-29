#!/usr/bin/env sh

move_and_copy() {
    echo "Move and Copy Files selected."
    read -p "Enter source: " source
    read -p "Enter destination: " destination
    read -p "Move (m) or Copy (c)? " action

    if [ "$action" = "m" ]; then
        mv "$source" "$destination"
    else
        cp "$source" "$destination"
    fi
    echo "Move and copy files completed."
}
