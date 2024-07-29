#!/usr/bin/env sh

help() {
    case $1 in
        1)
            echo -e "${BLUE}Find and Replace Utility Help:${NC}"
            echo "Options: regex, case sensitive, match the whole word"
            echo "Targets: current folder, specific files, exclude specific files"
            ;;
        2)
            echo -e "${BLUE}Find in Folder Help:${NC}"
            echo "Options: regex, case sensitive, include subfolders"
            ;;
        3)
            echo -e "${BLUE}Sort by Column Help:${NC}"
            echo "Options: specify column number, sort order (asc/desc)"
            ;;
        4)
            echo -e "${BLUE}Show Less File Content Help:${NC}"
            echo "Options: specify number of lines to show"
            ;;
        5)
            echo -e "${BLUE}SSH Connection Help:${NC}"
            echo "Options: specify host, username, port"
            ;;
        6)
            echo -e "${BLUE}SCP Copy Files Help:${NC}"
            echo "Options: specify source and destination"
            ;;
        7)
            echo -e "${BLUE}Move and Copy Files Help:${NC}"
            echo "Options: specify source and destination"
            ;;
        *)
            echo -e "${RED}Unknown command. Please enter a valid option.${NC}"
            ;;
    esac
}
