#!/usr/bin/env sh

welcome() {
    echo  "${BLUE}Welcome to the Interactive UI of the Shell Script Server.${NC}"
    echo "Please select a command:"
    echo  "${YELLOW}0 - Help${NC}"
    echo  "${YELLOW}1 - Find and replace in a file${NC}"
    echo  "${YELLOW}2 - Find in folder${NC}"
    echo  "${YELLOW}3 - Sort by column${NC}"
    echo  "${YELLOW}4 - Show less file content${NC}"
    echo  "${YELLOW}5 - SSH connection${NC}"
    echo  "${YELLOW}6 - SCP copy files${NC}"
    echo  "${YELLOW}7 - Move and copy files${NC}"
    echo  "${YELLOW}q - Quit${NC}"
}
