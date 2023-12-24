#!/bin/bash

xrandr --auto

if [[ "$(xrandr --listmonitors 2>/dev/null | wc -l)" -ne "3" ]]; then
	xrandr --output eDP-1-1 --mode 1920x1080 --rate 144.00 --primary;
else
	# Hometown Setup
	xrandr --output eDP-1-1 --off;
	xrandr --output DP-0 --primary --rate 144.00 --mode 1920x1080 --output eDP-1-1 --mode 1920x1080 --rate 144.00 --right-of DP-0
fi

bash /usr/bin/feh_refresh.sh

