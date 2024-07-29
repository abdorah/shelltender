#!/usr/bin/env sh

ssh_connection() {
    echo "SSH Connection selected."
    read -p "Enter host: " host
    read -p "Enter username: " username
    read -p "Enter port (default 22): " port

    [ -z "$port" ] && port=22

    ssh "$username@$host" -p "$port"
    echo "SSH connection completed."
}
