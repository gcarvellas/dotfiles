#!/bin/bash

# Toggles between power saving modes. Used for i3wm

mode=$(powerprofilesctl get)

case $mode in

# Power saver and performance mode shouldn't have compositor on

#toggle from power-saver to performance
power-saver)
	powerprofilesctl set performance
	dunstify -u normal -t 1000 -r 2593 "Set Power Mode to Performance"
	;;

#toggle from performance to balanced
performance)
	powerprofilesctl set balanced
	dunstify -u normal -t 1000 -r 2593 "Set Power Mode to Balanced"
	;;

#toggle from balanced to power-saver
balanced)
	powerprofilesctl set power-saver
	dunstify -u normal -t 1000 -r 2593 "Set Power Mode to Power Saver"
	;;
esac
