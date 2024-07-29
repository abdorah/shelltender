#!/usr/bin/env sh

help() {
    case $1 in
        1)
            echo "Find and Replace Utility Help:"
            echo "Options: regex, case sensitive, match the whole word"
            echo "Targets: current folder, specific files, exclude specific files"
            ;;
        2)
            echo "Find in Folder Help:"
            echo "Options: regex, case sensitive, include subfolders"
            ;;
        3)
            echo "Sort by Column Help:"
            echo "Options: specify column number, sort order (asc/desc)"
            ;;
        4)
            echo "Show Less File Content Help:"
            echo "Options: specify number of lines to show"
            ;;
        5)
            echo "SSH Connection Help:"
            echo "Options: specify host, username, port"
            ;;
        6)
            echo "SCP Copy Files Help:"
            echo "Options: specify source and destination"
            ;;
        7)
            echo "Move and Copy Files Help:"
            echo "Options: specify source and destination"
            ;;
        *)
            echo "Unknown command. Please enter a valid option."
            ;;
    esac
}
