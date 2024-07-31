#!/usr/bin/env sh

move_and_copy() {
    echo  "${BLUE}Move and Copy Files selected.${NC}"
    printf "${YELLOW}Enter source: ${NC}"
    read source
    printf "${YELLOW}Enter destination: ${NC}"
    read destination
    printf "${YELLOW}Move (m) or Copy (c)? ${NC}"
    read action

    if [ "$action" = "m" ]; then
        mv "$source" "$destination"
    else
        cp "$source" "$destination"
    fi
    echo  "${GREEN}Move and copy files completed.${NC}"
}
