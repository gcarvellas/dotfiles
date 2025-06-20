#!/bin/bash

# Takes clipboard of Japanese light novel text and OCR's i

if ! wl-paste | tesseract - - --psm 5 -c preserve_interword_spaces=1 -l jpn_vert | wl-copy; then
 notify-send "OCR Failed!" "An error occurred during OCR."
else
 notify-send "Done with JP OCR"
fi
