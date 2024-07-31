#!/usr/bin/env sh

ssh_connection() {
    echo  "${BLUE}SSH Connection selected.${NC}"
    printf "${YELLOW}Enter host: ${NC}"
    read host
    printf "${YELLOW}Enter username: ${NC}"
    read username
    printf "${YELLOW}Enter port (default 22): ${NC}"
    read port

    [ -z "$port" ] && port=22

    ssh "$username@$host" -p "$port"
    echo  "${GREEN}SSH connection completed.${NC}"
}
