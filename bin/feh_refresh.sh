#!/bin/bash

pkill feh

feh --bg-scale ~/Pictures/Wallpapers/wallpaper2.jpg ~/Pictures/Wallpapers/wallpaper.jpg
dunstify -u -normal -t 1000 -r 2593 "Refreshed Wallpaper"
