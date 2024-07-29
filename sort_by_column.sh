#!/usr/bin/env sh

sort_by_column() {
    echo -e "${BLUE}Sort by Column selected.${NC}"
    printf "${YELLOW}Enter column number: ${NC}"
    read column
    printf "${YELLOW}Sort order (asc/desc): ${NC}"
    read order

    if [ "$order" = "asc" ]; then
        sort -k"$column"
    else
        sort -rk"$column"
    fi
    echo -e "${GREEN}Sort by column completed.${NC}"
}
