#!/usr/bin/env sh

sort_by_column() {
    echo "Sort by Column selected."
    read -p "Enter column number: " column
    read -p "Sort order (asc/desc): " order

    if [ "$order" = "asc" ]; then
        sort -k"$column"
    else
        sort -rk"$column"
    fi
    echo "Sort by column completed."
}
