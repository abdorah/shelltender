#!/usr/bin/env sh

find_and_replace() {
    echo "Find and Replace selected."
    read -p "Enter regex pattern: " pattern
    read -p "Case sensitive? (y/n): " case_sensitive
    read -p "Match the whole word? (y/n): " whole_word
    read -p "Files to include (comma-separated): " include
    read -p "Files to exclude (comma-separated): " exclude

    # Build the find and replace command
    options=""
    [ "$case_sensitive" = "n" ] && options="$options -i"
    [ "$whole_word" = "y" ] && pattern="\\b$pattern\\b"

    for file in $(echo $include | tr "," "\n"); do
        if ! echo $exclude | grep -q "$file"; then
            sed -i "$options" "s/$pattern/<replacement>/g" "$file"
        fi
    done
    echo "Find and replace completed."
}
