#!/usr/bin/env sh

find_in_folder() {
    echo "Find in Folder selected."
    read -p "Enter regex pattern: " pattern
    read -p "Case sensitive? (y/n): " case_sensitive
    read -p "Include subfolders? (y/n): " include_subfolders

    options=""
    [ "$case_sensitive" = "n" ] && options="$options -i"

    if [ "$include_subfolders" = "y" ]; then
        grep -r $options "$pattern" .
    else
        grep $options "$pattern" *
    fi
    echo "Find in folder completed."
}
