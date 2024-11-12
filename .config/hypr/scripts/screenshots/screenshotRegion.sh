#!/bin/bash


BASE="$HOME/Pictures/screenshots"

# Get month for dir
MONTH=$(date +'%Y-%m')
MONTH_DIR="$BASE/$MONTH"

#make the directory if its not already there (once a month)
mkdir -p "$MONTH_DIR"

#set filename and filepath
FILENAME="$(date +'%Y%m%d_%H%M%S')_grim.png"
FILEPATH="$MONTH_DIR/$FILENAME"

#invoke slurp, grim, swappy and output to filepath, then copy the file there to clipboard
hyprpicker -r -z &
hyprpicker_pid=$!
sleep 0.01

grim -g "$(slurp)" "$FILEPATH"
kill $hyprpicker_pid
swappy -f "$FILEPATH" -o "$FILEPATH"
wl-copy < "$FILEPATH"
