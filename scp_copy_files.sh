#!/usr/bin/env sh

scp_copy_files() {
    echo "SCP Copy Files selected."
    read -p "Enter source (local or remote): " source
    read -p "Enter destination (local or remote): " destination

    scp "$source" "$destination"
    echo "SCP copy files completed."
}
