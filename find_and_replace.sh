#!/usr/bin/env sh

find_and_replace() {
    echo -e "${BLUE}Find and Replace selected.${NC}"
    printf "${YELLOW}Enter regex pattern: ${NC}"
    read pattern
    printf "${YELLOW}Case sensitive? (y/n): ${NC}"
    read case_sensitive
    printf "${YELLOW}Match the whole word? (y/n): ${NC}"
    read whole_word
    printf "${YELLOW}Replacement pattern: ${NC}"
    read replacement
    printf "${YELLOW}Files to include (comma-separated): ${NC}"
    read include
    printf "${YELLOW}Files to exclude (comma-separated): ${NC}"
    read exclude

    # Build the find and replace command
    options=""
    [ "$case_sensitive" = "n" ] && options="$options -i"
    [ "$whole_word" = "y" ] && pattern="\\b$pattern\\b"

    for file in $(echo $include | tr "," "\n"); do
        if ! echo $exclude | grep -q "$file"; then
            sed -i $options "s/$pattern/$replacement/g" "$file"
        fi
    done
    echo -e "${GREEN}Find and replace completed.${NC}"
}
