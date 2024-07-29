#!/usr/bin/env sh

scp_copy_files() {
    echo -e "${BLUE}SCP Copy Files selected.${NC}"
    printf "${YELLOW}Enter source (local or remote): ${NC}"
    read source
    printf "${YELLOW}Enter destination (local or remote): ${NC}"
    read destination

    scp "$source" "$destination"
    echo -e "${GREEN}SCP copy files completed.${NC}"
}
