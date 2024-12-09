#!/bin/bash

hyprctl activewindow >> /home/gcarvellas/data
dmenu-wl_run -m $(hyprctl activeworkspace | grep "monitorID: " | cut -d ' ' -f2) -nb '#442c2c' -sb '#6f1f1f' -sf '#ecbe6a' -nf '#d3b964' -fn 'Hack'


