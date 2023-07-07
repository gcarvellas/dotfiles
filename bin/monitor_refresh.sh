#!/bin/bash

if [[ "$(xrandr --listmonitors | wc -l)" -le "3" ]]; then
	xrandr --output eDP1 --mode 1920x1080 --rate 144.00 --primary;
else
	# Hometown Setup
	xrandr --output eDP1 --off;
	xrandr --output DP-4 --primary --rate 144.00 --mode 1920x1080 --output eDP1 --mode 1920x1080 --rate 144.00 --right-of DP-4 --output HDMI-0 --mode 1600x900 --rate 60.00 --right-of eDP1;
fi

# Wallpaper
feh --bg-scale ~/Pictures/Wallpapers/wallpaper.jpg
