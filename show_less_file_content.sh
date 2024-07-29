#!/usr/bin/env sh

show_less_file_content() {
    echo "Show Less File Content selected."
    read -p "Enter number of lines to show: " lines
    read -p "Enter file name: " file

    head -n "$lines" "$file"
    echo "Show less file content completed."
}
