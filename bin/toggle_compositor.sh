#!/bin/bash

set -e

## Toggle compositor on or off

if [[ "$(ps aux | grep picom | wc -l)" -ge "2" ]]; then #Compositor is on
	pkill picom;
	dunstify -u normal -t 1000 -r 2593 "Compositor Off"
else
	exec picom &!;
	dunstify -u normal -t 1000 -r 2593 "Compositor On"
fi

exit 0
