#!/usr/bin/env sh

find_in_folder() {
    echo  "${BLUE}Find in Folder selected.${NC}"
    printf "${YELLOW}Enter regex pattern: ${NC}"
    read pattern
    printf "${YELLOW}Case sensitive? (y/n): ${NC}"
    read case_sensitive
    printf "${YELLOW}Include subfolders? (y/n): ${NC}"
    read include_subfolders

    options=""
    [ "$case_sensitive" = "n" ] && options="$options -i"

    if [ "$include_subfolders" = "y" ]; then
        grep -r $options "$pattern" .
    else
        grep $options "$pattern" *
    fi
    echo  "${GREEN}Find in folder completed.${NC}"
}
