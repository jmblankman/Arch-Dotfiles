#!/bin/bash

# Get information about the currently focused window
focused_window=$(swaymsg -t get_tree | jq -r '
    recurse(.nodes[]?, .floating_nodes[]?) |
    select(.focused == true) |
    .type
')

# Determine the type and output the corresponding symbol
if [ "$focused_window" == "con" ]; then
    echo "[]="
elif [ "$focused_window" == "workspace" ]; then
    echo "[]="
else
    echo "&gt;&lt;&gt;"
fi
