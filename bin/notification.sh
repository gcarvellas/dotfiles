#!/bin/bash

set -e

# Handle workaround where dmenu-wl_run id's are incorrect if a laptop monitor is closed

fake_monitor_id=$(hyprctl activeworkspace | grep "monitorID: " | cut -d ' ' -f2)

monitor_id=$(hyprctl monitors | grep -oP '(\S+)\s\(ID\s\d\)' | grep -n "(ID $fake_monitor_id)" | cut -d: -f1)
monitor_id=$((monitor_id - 1))

dmenu-wl_run -m $monitor_id -nb '#442c2c' -sb '#6f1f1f' -sf '#ecbe6a' -nf '#d3b964' -fn 'Hack'


