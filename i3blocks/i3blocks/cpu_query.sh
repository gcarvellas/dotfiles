#!/bin/bash

cpu_usage=$(sar -u 1 1 | awk 'FNR == 5 { printf "%2i<span color=\"#ff5555\">%</span>", (100 - $8) } ')

avg_sensor_tmp=$(sensors -u coretemp-isa-0000 | grep -o -P "temp[0-9]*_input: [0-9]*.[0-9]*" | awk '{print $2}' | sed '1d' | awk '{total += $1; count++ } END { average = total / count; printf("%.0f", average)}')

degrees_output=$(echo "<span color=\"#ff5555\">°C</span>")

echo $cpu_usage ${avg_sensor_tmp}${degrees_output}
