#!/bin/bash

## Toggle compositor on or off

if [[ "$(ps aux | grep picom | wc -l)" -ge "2" ]]; then #Compositor is on
	pkill picom;
	dunstify -u normal -t 1000 -r 2593 "Compositor Off"
else
	exec picom --config ~/.config/compton.conf &!;
	dunstify -u normal -t 1000 -r 2593 "Compositor On"
fi
