#!/bin/bash
SCREENSHOTFOLDER="$HOME/Pictures/Screenshots"


FILE="${1}"
FILENAME="${FILE##*/}"
FILEBASE="${FILENAME%.*}"

convert "${FILE}" \( +clone -background black -shadow 80x20+0+15 \) +swap -background transparent -layers merge +repage "$SCREENSHOTFOLDER/${FILEBASE}.png"

rm "$FILE" #remove this line to preserve original image
dunstify "Screenshot" "Saved to ~/Pictures/Screenshots/${FILEBASE}.png"
