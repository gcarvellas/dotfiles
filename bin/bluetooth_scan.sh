#!/bin/bash
bluetoothctl scan on &!
BLUETOOTH_PID=$!
dunstify -u normal -t 1000 -r 2593 "Bluetooth scanning..."
sleep 10
kill $BLUETOOTH_PID
bluetoothctl scan off &!
BLUETOOTH_PID=$!
dunstify -u normal -t 1000 -r 2593 "Bluetooth scan finished"
kill $BLUETOOTH_PID
