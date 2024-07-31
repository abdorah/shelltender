#!/usr/bin/env sh

show_less_file_content() {
    echo  "${BLUE}Show Less File Content selected.${NC}"
    printf "${YELLOW}Enter number of lines to show: ${NC}"
    read lines
    printf "${YELLOW}Enter file name: ${NC}"
    read file

    head -n "$lines" "$file"
    echo  "${GREEN}Show less file content completed.${NC}"
}
