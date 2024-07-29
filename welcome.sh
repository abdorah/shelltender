#!/usr/bin/env sh

welcome() {
    echo -e "${BLUE}Welcome to the Interactive UI of the Shell Script Server.${NC}"
    echo "Please select a command:"
    echo -e "${YELLOW}0 - Help${NC}"
    echo -e "${YELLOW}1 - Find and replace in a file${NC}"
    echo -e "${YELLOW}2 - Find in folder${NC}"
    echo -e "${YELLOW}3 - Sort by column${NC}"
    echo -e "${YELLOW}4 - Show less file content${NC}"
    echo -e "${YELLOW}5 - SSH connection${NC}"
    echo -e "${YELLOW}6 - SCP copy files${NC}"
    echo -e "${YELLOW}7 - Move and copy files${NC}"
    echo -e "${YELLOW}q - Quit${NC}"
}
