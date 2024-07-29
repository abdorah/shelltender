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

# Main Interactive Loop
while true; do
    welcome
    read -p "Select an option: " option

    case $option in
        0) 
            read -p "Enter command number for help: " cmd
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
            echo "Exiting. Goodbye!"
            break
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
done
