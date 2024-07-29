#!/usr/bin/env sh

# Source other scripts
. ./welcome.sh
. ./help.sh
. ./find_and_replace.sh
. ./find_in_folder.sh
. ./sort_by_column.sh
. ./show_less_file_content.sh
. ./ssh_connection.sh
. ./scp_copy_files.sh
. ./move_and_copy.sh

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Main Interactive Loop
while true; do
    welcome
    printf "${YELLOW}Select an option: ${NC}"
    read option

    case $option in
        0) 
            printf "${YELLOW}Enter command number for help: ${NC}"
            read cmd
            help $cmd
            ;;
        1) 
            find_and_replace
            ;;
        2)
            find_in_folder
            ;;
        3)
            sort_by_column
            ;;
        4)
            show_less_file_content
            ;;
        5)
            ssh_connection
            ;;
        6)
            scp_copy_files
            ;;
        7)
            move_and_copy
            ;;
        q)
            printf "${GREEN}Exiting. Goodbye!${NC}\n"
            break
            ;;
        *)
            printf "${RED}Invalid option. Please try again.${NC}\n"
            ;;
    esac
done
